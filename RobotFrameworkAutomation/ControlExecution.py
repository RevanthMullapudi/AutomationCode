import openpyxl
excel = openpyxl.load_workbook('C:/Users/Nitin Tyagi/Desktop/task/Data2.xlsx')
sh = excel['Sheet1']
def  check_selected_country(countyrName):
    z="hello"
    if(countyrName=="Apr"):
        z="hi"
    return str(z)


def read_excel_rows_count():
    r= sh.max_row
    r=r+1
    return  r

