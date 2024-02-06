# 7) Criar um algoritmo que a partir de dois números inteiros imprima a seguinte saída: 

#    Dividendo, Divisor, Quociente e Resto 


*** Settings ***


*** Variables ***
${NUM1}    ${40}
${NUM2}    ${20}

*** Test Cases ***
Exercicio 7
    ${quociente}  Evaluate  ${NUM1} / ${NUM2}
    ${resto}      Evaluate  ${NUM1} % ${NUM2}

    Log To Console    \nO quociente é: ${quociente}\nCom o dividendo ${NUM1} e o divisor ${NUM2}\nO resto da divisão é: ${resto}