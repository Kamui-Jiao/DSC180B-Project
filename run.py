#!/usr/bin/env python

import re
import pandas as pd
import os
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

import src.features.feature
import src.models.model
import src.analysis.eda

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
        df = pd.DataFrame(features, columns=data_cfg['column_names'])
        X, y = generate_Xy(features)
        
    if 'analysis' in targets:
        with open('eda.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        plots = eval(data_cfg['plot'])
        eda(df, plots)
            
    if 'model' in targets:
        with open('model.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        X_train, X_test, y_train, y_test, reg = build(X, y)        
        mse(X_train, X_test, y_train, y_test, reg)
        
    if 'test' in targets:
        
        # make the data target
        features = parse_all('test/testdata', 1)
        df = pd.DataFrame(features, columns=data_cfg['column_names'])
        # output type I
        df.describe().to_csv('describe.csv')
        
    return reg


if __name__ == '__main__':
    # run via:
    # python main.py data model
    targets = sys.argv[1:]
    main(targets)
