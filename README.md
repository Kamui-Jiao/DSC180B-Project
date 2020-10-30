# DSC180A-Project
The data we have are grabbed from the /teams directory: malware and test-apps.

The purpose is to perform search on each software folder to find its smali files and process to get statistics 
and finally build a linear regression model to classify the ware to be benign or not.

It consists generate_feature() to parse smali files and generate features.
mse() builds up the model and computes the mean square error.
run() iterates through all softwares to perform generate_feature().

To run it, execute python run.py [path_m] [path_s]. 
Both are folders like /malware or /test-apps/benign with its subfolders to be softwares.
