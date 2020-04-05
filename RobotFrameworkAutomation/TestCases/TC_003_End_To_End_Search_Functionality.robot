*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../LibraryFiles/Screenshots.robot
Force Tags        Regression

*** Test Cases ***
TC_001_Search_functionality
    [Tags]      Smoke       Sanity
    open browser            https://thetestingworld.com/        Chrome

    #set browser implicit wait      10s
    #set selenium speed

    maximize browser window
    mouse over              xpath=//span[contains(text(),'VIDEOS22z')]
    click element           xpath=//span[contains(text(),'Free Videos')]
    User takes sreenshot of the page      Case1.png

