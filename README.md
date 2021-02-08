# DSC180B-Project
The data we have are grabbed from the /teams directory: malware and test-apps.

The purpose is to perform search on each software folder to find its smali files 
and perform method-call analysis to get holistic information of specific software
and finally build a improved MAMADroid to classify the ware to be benign or not.

It consists process_smali() to parse smali file and generate call-analysis.

To run it, execute python run.py <targets>.
  targets including 'feature', 'analysis', 'test'

### Responsibilities

* Jian Jiao developed code which parsing content, generates features.
* Zihan Qin developed report and help partner to test code and debug.
