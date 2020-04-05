*** Settings ***
Library    ../PythonLibrary/RandomGenerator.py
Library    SeleniumLibrary

*** Test Cases ***
TC_001
    : FOR    ${i}     IN RANGE      1      10
    \     log to console      ${i}

