*** Settings ***
Library     SeleniumLibrary
Resource    ../LibraryFiles/BasicKeywords.robot
Documentation    This file contains test cases for basic login functionality
Test Timeout    10s
*** Variables ***
${Application_URL}     https://www.facebook.com

*** Test Cases ***
TC_001_Start_Stop_Browser


TC_002_Login_Logout_Functionality
    [Tags]     Regression       Smoke
    [Setup]     User comes to browser and open application
    ${RET}=     User enter username and password and login to the application    hello      abcd
    log to console  ${RET}
    [Teardown]    close browser


