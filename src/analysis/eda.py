#!/usr/bin/env python

def eda(df, plots):
    if 'boxplot' in plots:
        df.boxplot(column=['num_api', 'num_static', 'num_unique_api'])
        
    if 'describe' in plots:
        df.describe()
        
    if 'api_count' in plots:
        A = matrix_A(features, data_cfg['total_col'])
        A.describe()
