*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
User takes sreenshot of the page
    [Arguments]                                     ${name}
    set screenshot directory                        C:/Users/Nitin Tyagi/PycharmProjects/RobotFrameworkAutomation
    capture page screenshot                         ${name}