*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Flow การยื่นภาษี
    เข้าหน้าแรก
    ตรวจสอบและปิดหน้าแสดงข่าวสาร
    ทำการ login เข้าระบบการยื่นภาษี

*** Keywords ***
ทำการ login เข้าระบบการยื่นภาษี
    Wait Until Element Contains   xpath://*[@id="top"]/div/div[2]/button[1]   
    ...    ยื่นแบบออนไลน์
    Click Element   xpath://*[@id="top"]/div/div[2]/button[1]

    Switch Window   NEW
    Wait Until Element Is Enabled   id:username
    Input Text    id:username    xxxxxxx

ตรวจสอบและปิดหน้าแสดงข่าวสาร
    Wait Until Element Contains   id:exampleModalLabel   แจ้งข่าวสาร
    Click Element    xpath=//*[@id="announceModal"]/div/div/div[1]/button

เข้าหน้าแรก
    Open Browser    https://efiling.rd.go.th/rd-cms/    browser=gc    
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window