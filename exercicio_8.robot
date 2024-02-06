# 8) Calcule a área e o preço de um terreno 

#    area = largura x comprimento 

#    preco = área x preco do metro quadrado 


*** Settings ***


*** Variables ***
${LARGURA}        ${42.5}
${COMPRIMENTO}    ${120.0}
${PRECO_METRO}    ${6.0}

*** Test Cases ***
Exercicio 8
    ${area}          Evaluate    ${LARGURA} * ${COMPRIMENTO}
    ${precoTotal}    Evaluate    ${area} * ${PRECO_METRO}

    Log To Console    \nA área total é: ${area}\nO preço total é: R$ ${precoTotal}