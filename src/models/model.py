def mse(y_train, y_predict_train, y_test, y_predict_test):    
    print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train), 
                                                 mean_squared_error(y_test, y_predict_test)))
    return mean_squared_error(y_test, y_predict_test)

def build(X, y):
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, shuffle = True)        
    reg = LogisticRegression(fit_intercept=True, C=data_cfg['C'], max_iter=data_cfg['max_iter']).fit(X_train, y_train)
    return X_train, X_test, y_train, y_test, reg
