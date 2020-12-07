from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

def mse(X_train, X_test, y_train, y_test, reg):
    y_predict_train = reg.predict(X_train)        
    y_predict_test = reg.predict(X_test)
    print('train MSE = {}, test MSE = {}'.format(mean_squared_error(y_train, y_predict_train), 
                                                 mean_squared_error(y_test, y_predict_test)))
    return mean_squared_error(y_test, y_predict_test)

def build(X, y, C, max_it):
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, shuffle = True)        
    reg = LogisticRegression(fit_intercept=True, C=C, max_iter=max_it).fit(X_train, y_train)
    return X_train, X_test, y_train, y_test, reg
