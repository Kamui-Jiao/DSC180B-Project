#!/usr/bin/env python

import re
import pandas as pd
import os
import numpy as np

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
        features_mal = parse_mal(data_cfg['path_mal'])
        features_saf = parse_common(data_cfg['path_saf'])

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

    if 'test' in targets:
        # make the data target

        # output type I
        return

    return 'Finished'


if __name__ == '__main__':
    # run via:
    # python main.py data model
    targets = sys.argv[1:]
    main(targets)
