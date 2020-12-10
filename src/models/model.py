#!/usr/bin/env python
from sklearn.metrics import mean_squared_error
from sklearn.linear_model import LogisticRegression
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

def ttsplit(X, y):
    return train_test_split(X, y, test_size=0.33, random_state=42)

def baseline_predict(X):
    return X.apply(lambda x:1 if x.num_smali >= 50000 else 0, axis=1)

def build_Log(X_train, y_train, C, max_it):
    return LogisticRegression(fit_intercept=True, C=C, max_iter=max_it).fit(X_train, y_train)

def build_Linear(X_train, y_train):
    return LinearRegression().fit(X_train, y_train)

def build_KN(X_train, y_train, n):
    return KNeighborsClassifier(n_neighbors=n).fit(X_train, y_train)

def accuracy(y_train, y_test, y_predict_train, y_predict_test):
    print('train Accuracy = {}, test Accuracy = {}'.format(accuracy_score(y_train, y_predict_train),
                                                 accuracy_score(y_test, y_predict_test)))
    return accuracy_score(y_test, y_predict_test)

def mse(y_train, y_test, y_predict_train, y_predict_test):
    print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train),
                                                 mean_squared_error(y_test, y_predict_test)))
    return mean_squared_error(y_test, y_predict_test)
