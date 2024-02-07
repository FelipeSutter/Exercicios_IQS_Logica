# 13) Escreva um programa que encontre o valor máximo entre 2 números 



*** Settings ***


*** Variables ***
${NUM1}        ${5}
${NUM2}        ${3}  

*** Test Cases ***
Exercicio 13
    IF        ${NUM1} > ${NUM2}
        Log To Console    \nO número ${NUM1} é maior que o ${NUM2}
    ELSE IF   ${NUM1} < ${NUM2}
        Log To Console    \nO número ${NUM2} é maior que o ${NUM1}
    ELSE
        Log To Console    \nOs dois números são iguais!
    END