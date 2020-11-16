# DSC180A-Project
The data we have are grabbed from the /teams directory: malware and test-apps.

The purpose is to perform search on each software folder to find its smali files and process to get statistics 
and finally build a linear regression model to classify the ware to be benign or not.

It consists generate_feature() to parse smali files and generate features.
mse() builds up the model and computes the mean square error.
parse_all() iterates through all softwares to perform generate_feature().
matrix_A() generate A_matrix (cited from HINDROID).

To run it, execute python run.py <targets>.
  targets including 'feature', 'model', 'analysis'

### Responsibilities

* Jian Jiao developed code which parsing content, generates features and builds up model.
* Zihan Qin developed report and help partner to test code and debug.
