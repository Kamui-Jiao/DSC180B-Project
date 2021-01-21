#!/usr/bin/env python
import re
import pandas as pd
import os
import numpy as np

# Parse specific ware and generate features
def generate_feature(path, ware_type, is_malware):
    sml = ''
    i = 0
    for root, dirs, files in os.walk(path, topdown=False):
        for name in files:
            if name.endswith('.smali'):
                f = open(os.path.join(root, name))
                sml += f.read() + '\n'
                f.close()
                i += 1
    df = pd.DataFrame(re.findall(r'invoke-(\w{5,9})\s.+}, (.*);->', sml))
    nums = df[0].value_counts()
    def get_num(name):
        try:
            return nums[name]
        except:
            return 0

    res = [ware_type, is_malware, i, df.shape[0], len(df[1].unique()), len(re.findall(r'\.method', sml)), get_num('direct'),
           get_num('static'), get_num('virtual'), get_num('interface'), get_num('super')]
    return res, df[1].value_counts()


# Parse all malware data
def parse_mal(path):
    res = []
    ware_types = os.listdir(path)
    for mal_type in ware_types:
        type_path = path + '/' + mal_type
        for variety in os.listdir(type_path):
            res.append(generate_feature(type_path, mal_type, 1))
    return res

# Parse all benignware data
def parse_common(path):
    res = []
    wares = os.listdir(path)
    max_w = 0
    for d in wares:
        d_path = path + '/' + d
        res.append(generate_feature(d_path, d, 0))
        max_w += 1
    return re

# Trasnform features list to df
def features_todf(features):
    return pd.DataFrame(list(pd.DataFrame(features)[0]), columns=['app_type', 'is_malware', 'num_smali','num_api', 'num_unique_api','num_block',
       'num_direct', 'num_static', 'num_virtual', 'num_interface', 'num_super'])

# Generate X, y
def generate_Xy(df):
    X = df.drop('is_malware', axis=1).drop('app_type', axis=1)
    y = df.is_malware
    return X, y
