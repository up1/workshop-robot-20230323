*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${MY_URL}        https://www.google.com/
${MY_BROWSER}    gc

*** Test Cases ***
Found data from google with keyword robot
    เปิด browser เพื่อเข้าใช้งาน google.com
    ทำการค้นหาด้วยคำว่า robot
    ต้องเจอข้อมูลของ robot

*** Keywords ***
เปิด browser เพื่อเข้าใช้งาน google.com
    Open Browser    ${MY_URL}    browser=${MY_BROWSER}    
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

ต้องเจอข้อมูลของ robot
    Wait Until Page Contains    robot
    Wait Until Element Contains   id:result-stats   ผลการค้นหาประมาณ
    Wait Until Element Contains   id:result-stats   รายการ

    ${data}=  Get Text   id:result-stats
    Log To Console    ${data}
    @{words}=	Split String	${data}  ${SPACE}  3
    Log To Console    ${words[0]}
    Log To Console    ${words[1]}
    Log To Console    ${words[2]}
    Log To Console    ${words[3]}
    Should Be Equal    ผลการค้นหาประมาณ    ${words[0]}
    Should Be Equal    รายการ    ${words[2]}

ทำการค้นหาด้วยคำว่า robot
    # Sleep    10s
    Wait Until Element Is Enabled   name:q
    Input Text    name:q    robot
    Press Keys    name:q    RETURN
