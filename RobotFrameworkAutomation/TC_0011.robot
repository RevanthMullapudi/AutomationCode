*** Settings ***
Library    SeleniumLibrary
Library    ControlExecution.py
*** Test Cases ***
TC_001
    open browser       https://www.facebook.com       Chrome
    maximize browser window
    ${r}=     read_excel_rows_count
    : FOR     ${i}      IN RANGE       1      ${r}
    \    ${user}=     read_excel_cell_data      ${i}       1
    \    ${pass}=     read_excel_cell_data      ${i}       2
    \    ${Third}=     read_excel_cell_data      ${i}       3
    \    input text      id=email         ${user}
    \    input text      id=pass          ${pass}
    \    input text      id=pass          ${Third}
    \    sleep     10s