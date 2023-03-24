*** Test Cases ***
Try
    Sum 1 and 2 =   3

*** Keywords ***
Sum ${x} and ${y} =
    [Arguments]  ${expected}
    Log To Console    ${x}+${y}
    ${result}=  Evaluate    ${x}+${y}
    Log To Console    ${result}
    Should Be Equal As Integers    ${expected}    ${result}