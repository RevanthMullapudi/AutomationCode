*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC_002
    switch browser      1
    input text       id=pass      hello
    click element     xpath=//input[@type='submit']