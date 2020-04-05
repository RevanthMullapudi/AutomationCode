*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC_001
    switch browser     1
    input text         id=email       hello