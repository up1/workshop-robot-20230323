*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Found data from google with keyword robot
    เปิด browser เพื่อเข้าใช้งาน google.com
    ทำการค้นหาด้วยคำว่า robot
    ต้องเจอข้อมูลของ robot

*** Keywords ***
เปิด browser เพื่อเข้าใช้งาน google.com
    Open Browser    https://www.google.com/    browser=gc    
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window