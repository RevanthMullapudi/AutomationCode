*** Settings ***
Library    SeleniumLibrary
Resource   ../ElementLocators/ElementLocators.robot
Resource   ../BaseOperations/BasicCommands.robot

*** Variables ***
${Application_URL}     https://www.facebook.com
${Name}                hello

*** Keywords ***
User comes to browser and open application
    [Documentation]    This keyword is for starting browser
    open browser     ${Application_URL}    chrome
    maximize browser window

User enter username and password and login to the application
    [Arguments]                              ${username}                 ${password}
    User enter data into textbox             id=email                    ${username}
    User enter data into textbox             id=pass                     ${password}
    User clear data of textbox               id=pass
    click element                            xpath=${login_signin}
    ${titleApp}=                             get title
    [Return]                                 ${titleApp}