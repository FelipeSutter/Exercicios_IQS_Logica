*** Settings ***


*** Variables ***
${LAVA_LOUCAS}    ${5}


*** Test Cases ***
Lava louças
    WHILE  ${LAVA_LOUCAS} > 0
        Log To Console     \nUma louça foi lavada
        ${LAVA_LOUCAS}    Evaluate     ${LAVA_LOUCAS} - 1
        IF  ${LAVA_LOUCAS} == 0
            Log To Console    Acabaram as louças, parabéns!
        ELSE
            Log To Console    \nRestam ${LAVA_LOUCAS} louças    
            
        END
        
    END
    

