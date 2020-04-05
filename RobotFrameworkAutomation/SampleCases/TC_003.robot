*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC_003
    switch browser     1
    input text         id=pass     abcd


TC_004
    ${var}=      set variable      Yes
    run keyword if      '${var}'=='Yes'        log to console        Hello World