#!/usr/bin/env python

import re
import pandas as pd
import os
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

import build_features
from model import mse

def main(target):
    '''
    Runs the main project pipeline logic.
    
    '''
    if 'feature' in targets:
        with open('feature.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        features_mal = parse_all(data_cfg['path_mal'], 1, data_cfg['pattern'])
        features_saf = parse_all(data_cfg['path_saf'], 0, data_cfg['pattern'])
        features = features_mal + features_saf
        X = [i[2:] for i in features]
        y = [i[1] for i in features]
        
    if 'analysis' in targets:
        with open('eda.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        plots = eval(data_cfg['plot'])
        df = pd.DataFrame(features, columns=['app_name', 'is_malware', 'num_smali','num_api', 'num_unique_api','num_block',
                                                 'num_direct', 'num_static', 'num_virtual', 'num_interface', 'num_super'])
        if 'boxplot' in plots:
            df.boxplot(column=['num_api', 'num_static', 'num_unique_api'])
        
        if 'describe' in plots:
            df.describe()
            
        if 'api_count' in plots:
            A = matrix_A(features, data_cfg['total_col'])
            A.describe()
            
    if 'model' in targets:
        with open('model.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, shuffle = True)        
        reg = LogisticRegression(fit_intercept=True, C=data_cfg['C'], max_iter=data_cfg['max_iter']).fit(X_train, y_train)        
        y_predict_train = reg.predict(X_train)        
        y_predict_test = reg.predict(X_test)
        mse(y_train, y_predict_train, y_test, y_predict_test)
        
    if 'test' in targets:
        
        # make the data target
        features = parse_all('test/testdata', 1)
        X = [i[2:] for i in features]
        y = [i[1] for i in features]
        df = pd.DataFrame(features, columns=['app_name', 'is_malware', 'num_smali','num_api', 'num_unique_api','num_block',
                                                 'num_direct', 'num_static', 'num_virtual', 'num_interface', 'num_super'])
        # output type I
        df.describe().to_csv('describe.csv')
        
    return reg


if __name__ == '__main__':
    # run via:
    # python main.py data model
    targets = sys.argv[1:]
    main(targets)
