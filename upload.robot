*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${MY_URL}    http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Keywords ***
Open upload files
    Open Browser    ${MY_URL}    browser=gc    
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window


Choose 3 files
    Choose File    xpath://div[1]/input[2]    ${CURDIR}/uploads/1.txt
    Choose File    xpath://div[1]/input[2]    ${CURDIR}/uploads/2.txt
    Choose File    xpath://div[1]/input[2]    ${CURDIR}/uploads/3.txt   

*** Test Cases ***
Success with upload 3 files
    Open upload files
    Choose 3 files
    Validate data after choosed 3 files
    Upload and validate progress of first file
    Upload and validate progress of second file
    Upload and validate progress of third file

