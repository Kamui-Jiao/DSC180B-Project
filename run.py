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
    'feature' should be included in targets since it is the base for each other targets.
    'model' should be included in targets when 'test' is target.

    '''
    if 'feature' in targets:
        with open('config/feature.json') as fh:
            data_cfg = json.load(fh)

        # make the data target
        features_mal = parse_all(data_cfg['path_mal'], 1, data_cfg['pattern'])
        features_saf = parse_all(data_cfg['path_saf'], 0, data_cfg['pattern'])
        features = features_mal + features_saf
        df = pd.DataFrame(features, columns=data_cfg['column_names'])
        X, y = generate_Xy(features)

    if 'analysis' in targets:
        with open('config/eda.json') as fh:
            data_cfg_eda = json.load(fh)

        # make the data target
        plots = eval(data_cfg_eda['plot'])
        eda(df, plots)

    if 'model' in targets:
        with open('config/model.json') as fh:
            data_cfg_model = json.load(fh)

        # make the data target
        #X_train, X_test, y_train, y_test = ttsplit(X, y)
        #reg = build(X_train, y_train, data_cfg_model['C'], data_cfg_model['max_iter'])
        #pred_train = reg.predict(X_train)
        #pred_test = reg.predict(X_test)
        #mse_1 = mse(y_train, y_test, pred_train, pred_test)

    if 'test' in targets:
        # make the data target
        feature_test = generate_feature('test', 'test', 1, data_cfg['pattern'])
        X_t, _ = generate_Xy(feature_test)
        df = pd.DataFrame(feature_test, columns=data_cfg['column_names'])
        # output type I
        df.describe().to_csv('describe.csv')

        # output type II
        #pred = reg.predict(X_t)
        return df

    return 'Finished'


if __name__ == '__main__':
    # run via:
    # python main.py data model
    targets = sys.argv[1:]
    main(targets)
