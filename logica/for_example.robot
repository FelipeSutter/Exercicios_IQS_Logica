*** Settings ***


*** Variables ***
${NUM_LOUCAS}    ${5}


*** Test Cases ***
For Example
    FOR     ${i}     IN RANGE    ${NUM_LOUCAS}
        Log To Console    \nUma louça foi lavada!
        ${remaining}    Evaluate    ${NUM_LOUCAS} - ${i} - 1
        Log To Console    Restam ${remaining}  
    
    END
