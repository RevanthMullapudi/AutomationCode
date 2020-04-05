*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
User enter data into textbox
    [Arguments]     ${locator}      ${value}
    wait until page contains element    ${locator}
    input text       ${locator}         ${value}
    log to console     Data entered to the textbox, where locator is ${locator}

User clear data of textbox
    [Arguments]     ${locator}
    wait until page contains element    ${locator}
    clear element text    ${locator}
    log to console     Clear text of the textbox, where locator is ${locator}