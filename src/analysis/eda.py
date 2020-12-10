#!/usr/bin/env python

def eda(df, plots):
    if 'boxplot' in plots:
        df.boxplot(column=['num_api', 'num_static', 'num_unique_api'])

    if 'describe' in plots:
        df.describe()

    if 'api_count' in plots:
        A = matrix_A(features, data_cfg['total_col'])
        A.describe()

    if 'all' in plots:
        df.loc[df.is_malware == 1].num_smali.hist()
        print('Malware, Mean = {}'.format(df.loc[df.is_malware == 1].num_smali.mean()))

        df.loc[df.is_malware == 0].num_smali.hist()
        print('Normal software, Mean = {}'.format(df.loc[df.is_malware == 0].num_smali.mean()))

        df.groupby('app_type')['is_malware'].count().sort_values(ascending=False)

        df.is_malware.value_counts()

        def colors(n):
            col = []
            for _ in range(n):
                col.append(np.random.rand(3,))
            return col

        fig, ax = plt.subplots(figsize=[8,5])
        ax.set_axisbelow(True)
        ax.yaxis.grid(color='gray', linestyle='dashed')
        ax.xaxis.grid(color='gray', linestyle='dashed')
        plt.scatter(df.groupby('smalis')['is_malware'].mean().index, df.groupby('smalis')['is_malware'].mean(), s=df.groupby('smalis')['is_malware'].count() * 20, c=colors(19), linewidths=0.5,edgecolors='black',alpha=0.8)
        plt.xlabel('Num Smali Files')
        plt.ylabel('Avg Malware')
        plt.title('Avg Malware and Num Smali Files');

        fig, ax = plt.subplots(figsize=[8,5])
        ax.set_axisbelow(True)
        ax.yaxis.grid(color='gray', linestyle='dashed')
        ax.xaxis.grid(color='gray', linestyle='dashed')
        plt.scatter(df.groupby('blocks')['is_malware'].mean().index, df.groupby('blocks')['is_malware'].mean(), s=df.groupby('blocks')['is_malware'].count() * 20, c=colors(20), linewidths=0.5,edgecolors='black',alpha=0.8)
        plt.xlabel('Num Blocks')
        plt.ylabel('Avg Malware')
        plt.title('Avg Malware and Num Blocks');

        fig, ax = plt.subplots(figsize=[8,5])
        ax.set_axisbelow(True)
        ax.yaxis.grid(color='gray', linestyle='dashed')
        ax.xaxis.grid(color='gray', linestyle='dashed')
        plt.scatter(df.groupby('uniques')['is_malware'].mean().index, df.groupby('uniques')['is_malware'].mean(), s=df.groupby('uniques')['is_malware'].count() * 20, c=colors(18), linewidths=0.5,edgecolors='black',alpha=0.8)
        plt.xlabel('Num Unique Apis')
        plt.ylabel('Avg Malware')
        plt.title('Avg Malware and Num Unique Apis');
