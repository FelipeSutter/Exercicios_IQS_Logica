# 14) Escreva um programa que funcione como uma calculadora simples, contendo dois números 
# e onde você pode selecionar uma operação soma (+), subtração(-), multiplicação(*) e divisão(/) 



*** Settings ***


*** Variables ***
${NUM1}    ${10}
${NUM2}    ${20}

*** Tasks ***
Exercício 14
    
    Log To Console    \nSoma: ${10 + 10}
    Log To Console    \nSubtração: ${10 - 20}
    Log To Console    \nMultiplicação: ${10 * 20}
    Log To Console    \nDivisão: ${10 / 20}
    Log To Console    \nResto: ${20 % 20}