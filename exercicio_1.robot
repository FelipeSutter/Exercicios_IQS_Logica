# 1) Some duas variáveis e imprima o resultado. 

*** Settings ***


*** Variables ***
${NUM1}    ${10}
${NUM2}    ${20}

*** Test Cases ***
Exercicio 1
    ${resultado}      Evaluate    ${NUM1} + ${NUM2}
    Log To Console    \nO resultado de ${NUM1} + ${NUM2} eh: ${resultado}