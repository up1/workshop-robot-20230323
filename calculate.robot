*** Test Cases ***
Try
    Sum 1 and 2 = 3
    
*** Keywords ***
Sum ${x} and ${y} = ${expected}
    ${result}=  Evaluate    ${x}+${y}
    Should Be Equal As Integers    ${expected}    ${result}