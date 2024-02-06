# 9) Fazer um algoritmo que a partir da distância percorrida em km e o total gasto de combustível, 
#    no final  exiba o consumo médio do carro. 


*** Settings ***


*** Variables ***
${DISTANCIA}        ${20}
${TOTAL_GASTO}      ${1.5}  

*** Test Cases ***
Exercicio 9
    ${media}      Evaluate    ${DISTANCIA} / ${TOTAL_GASTO}
    Log To Console    \nO consumo médio do carro é de ${media} km/l