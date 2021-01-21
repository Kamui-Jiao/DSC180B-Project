# DSC180A-Project
The data we have are grabbed from the /teams directory: malware and test-apps.

The purpose is to perform search on each software folder to find its smali files and process to get statistics 
and finally build a improved MAMADroid to classify the ware to be benign or not.

It consists generate_feature() to parse smali files and generate features.

To run it, execute python run.py <targets>.
  targets including 'feature', 'analysis', 'test'

### Responsibilities

* Jian Jiao developed code which parsing content, generates features.
* Zihan Qin developed report and help partner to test code and debug.
