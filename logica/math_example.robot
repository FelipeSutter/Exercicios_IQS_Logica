*** Settings ***


*** Variables ***
${NUM1}    ${10}
${NUM2}    ${20}
${RESULTADO}    ${${NUM1} + ${NUM2}}

*** Tasks ***

Math Example
    ${resultado}    Set Variable    ${${NUM1} + ${NUM2}}
    
    Log To Console    \nSoma: ${10 + 10}
    Log To Console    \nResultado: ${RESULTADO}
    Log To Console    \nSubtração: ${10 - 20}
    Log To Console    \nMultiplicação: ${10 * 20}
    Log To Console    \nDivisão: ${10 / 20}
    Log To Console    \nResto: ${20 % 20}
    
    