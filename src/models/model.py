def mse(X, y):
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, shuffle = True)        
    reg = LinearRegression().fit(X_train, y_train)        
    y_predict_train = reg.predict(X_train)        
    y_predict_test = reg.predict(X_test)        
    print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train), 
                                                 mean_squared_error(y_test, y_predict_test)))
    return mean_squared_error(y_test, y_predict_test)


