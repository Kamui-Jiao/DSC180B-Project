def mse(y_train, y_predict_train, y_test, y_predict_test):    
    print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train), 
                                                 mean_squared_error(y_test, y_predict_test)))
    return mean_squared_error(y_test, y_predict_test)

