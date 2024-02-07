# 11) A partir de um número retorne como resposta se ele é positivo, negativo ou zero. 

*** Settings ***


*** Variables ***
${NUM}        ${20}

*** Test Cases ***
Exercicio 11
    IF  '${NUM}' < '0'
        Log To Console    \nNúmero negativo
    ELSE IF  '${NUM}' == '0'
        Log To Console    \nNúmero igual a 0
    ELSE
        Log To Console    \nNúmero positivo
    END