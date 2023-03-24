*** Settings ***
Resource    xyz/my_keyword.robot

*** Test Cases ***
Success with upload 3 files
    my_keyword.Open upload files
    my_keyword.Choose 3 files
    my_keyword.Upload file "1" and check upload progress "33"%
    my_keyword.Upload and validate progress   2   67
    my_keyword.Upload and validate progress   3   100

