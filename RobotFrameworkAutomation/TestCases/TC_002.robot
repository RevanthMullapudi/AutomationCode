*** Settings ***
Library     SeleniumLibrary
Resource    ../LibraryFiles/BasicKeywords.robot
Suite Setup    User comes to browser and open application
Suite Teardown    close browser
*** Variables ***
${Application_URL}     https://www.facebook.com

*** Test Cases ***
TC_003_Start_Stop_Browser
    [Tags]     Sanity
    log to console     Sanity
    ${RET}=     User enter username and password and login to the application    hello      abcd
    log to console  ${RET}

TC_004_Login_Logout_Functionality
    [Tags]     Regression
    ${RET}=     User enter username and password and login to the application    hello      abcd
    log to console  ${RET}


