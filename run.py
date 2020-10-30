#!/usr/bin/env python

import re
import pandas as pd
import os
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

def main(path_m, path_s):
    '''
    Runs the main project pipeline logic.
    
    '''

    def generate_feature(path, ware_name, is_malware):
        sml = ''
        for root, dirs, files in os.walk(path, topdown=False):
            for name in files:
                if name.endswith('.smali'):
                    f = open(os.path.join(root, name))
                    sml += f.read() + '\n'
                    f.close()
        df = pd.DataFrame(re.findall(r'invoke-(\w{5,9})\s.+}, (.*);->', sml))
        nums = df[0].value_counts()
        def get_num(name):
            try:
                return nums[name]
            except:
                return 0
        res = [ware_name, is_malware, df.shape[0], len(df[1].unique()), len(re.findall(r'\.method', sml)), get_num('direct'), get_num('static'), get_num('virtual'), get_num('interface'), get_num('super')]

        return res
    
    def mse(X, y):
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, shuffle = True)
        reg = LinearRegression().fit(X_train, y_train)
        y_predict_train = reg.predict(X_train)
        y_predict_test = reg.predict(X_test)
        print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train), 
                                                     mean_squared_error(y_test, y_predict_test)))
        
        return mean_squared_error(y_test, y_predict_test)
        
    def run(path, is_mal):
        res = []
        wares = [i for i in os.listdir(path) if '.' not in i]
        for d in wares:
            d_path = path + '/' + i
            res.append(generate_feature(d_path, d, is_mal))
        return res
      
    # Malware
    path_mal = '/teams/DSC180A_FA20_A00/a04malware/malware' # Path
    features_mal = run(path_mal, 1)
    
    # Safeware
    path_saf = '/teams/DSC180A_FA20_A00/a04malware/test-apps/benign' # Path
    features_saf = run(path_saf, 0)
    
    features = features_mal + features_saf
    X = [i[2:] for i in features]
    y = [i[1] for i in features]
    
    return mse(X, y)


if __name__ == '__main__':
    # run via:
    # python main.py data model
    targets = sys.argv[1:]
    main(targets)
