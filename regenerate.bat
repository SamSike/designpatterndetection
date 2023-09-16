@echo off
:: This file generates all results from each classifier
mkdir results
for %%X in (
    RF
    SVM
    GBTREE
    ADABOOST
    ADABOOST_LOGISTIC
    LOGISTIC
    RIDGE
    VOTER
    EXTRA_TREES
) do (
    echo Running Classifier %%X
    mkdir results\%%X
    python classifier.py %%X > results\%%X\%%X.txt
    echo Classifier %%X Completed
)

echo All Classifiers Completed