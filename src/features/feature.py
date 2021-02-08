#!/usr/bin/env python
import re
import pandas as pd
import os
import numpy as np

# Transform smali file to call-anlysis table
def process_smali(sml):
    methods = pd.DataFrame(re.findall(r'method.* (\w+)[(].+[)].+;([\d\D]*?)\.end method', sml))
    if len(methods) == 0:
        return -1

    def process_method(x):
        res = pd.DataFrame(re.findall(r'invoke-(\w{5,9})\s.+}, (.*);->(.+)[(]', x[1]))
        if len(res) == 0:
            return
        res.columns = ['invoke_type', 'package_long', 'call']
        res['method'] = x[0]
        res['package'] = res.package_long.apply(lambda x:x[1:x.find('/')])
        res['type'] = res.package.apply(lambda x:x if x in ['android', 'androidx', 'google', 'java', 'javax', 'kotlin'] else 'self')
        return res

    dfs = methods.apply(process_method, axis=1)
    try:
        return pd.concat(dfs.tolist())
    except:
        return -1


# Generate Markov Chain
def generate_chain(df):
    return df.type.value_counts() / len(df)


# Apply smali file analysis to all smali files in an apk
def process_apk(path):
    df = pd.DataFrame()
    for root, dirs, files in os.walk(path, topdown=False):
        for name in files:
            if name.endswith('.smali'):
                f = open(os.path.join(root, name))
                sml_df = process_smali(f.read())
                if type(sml_df) == int:
                    pass
                else:
                    df = pd.concat([df, sml_df], ignore_index=True)
                f.close()
    return df


# Parse all malware data
def parse_mal(path):
    res = []
    ware_types = os.listdir(path)
    for mal_type in ware_types:
        type_path = path + '/' + mal_type
        for variety in os.listdir(type_path):
            res = pd.concat([res, process_apk(type_path)], ignore_index=True)
    return res


# Parse all benignware data
def parse_common(path):
    res = pd.DataFrame()
    wares = os.listdir(path)
    for d in wares:
        d_path = path + '/' + d
        res = pd.concat([res, process_apk(d_path)], ignore_index=True)
    return res
