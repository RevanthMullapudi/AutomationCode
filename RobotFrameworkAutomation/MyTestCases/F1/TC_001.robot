*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
TC_001
    open browser      https://www.facebook.com       Chrome
    maximize browser window
    input text        id=email        hello
    
