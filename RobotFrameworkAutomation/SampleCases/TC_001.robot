*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC_001
    open browser       https://www.facebook.com      Chrome
    maximize browser window