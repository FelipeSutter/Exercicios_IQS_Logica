# 2) Construir um algoritmo que a partir de um número informado exiba na tela o seu sucessor e antecessor. 

*** Settings ***


*** Variables ***
${NUM}    ${15}

*** Test Cases ***
Exercicio 2
    ${sucessor}      Evaluate    ${NUM} + 1
    ${antecessor}      Evaluate    ${NUM} - 1
    Log To Console    \nO antecessor de ${NUM} eh ${antecessor} \ne o sucessor eh ${sucessor}
