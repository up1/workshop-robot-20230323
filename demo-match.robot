*** Variables ***
${TEXT}    About 1,760,000,000 results (0.45 seconds) 

*** Test Cases ***
With regular expression
    Should Match Regexp   ${TEXT}   
    ...    About ([\d,]+) results \(([\d\.]+) seconds\)
    ...    

Compare data
    Should Be Equal    100    ${100}
    