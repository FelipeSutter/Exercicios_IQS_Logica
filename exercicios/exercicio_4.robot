# 4) Faça um programa com duas variáveis ano_nascimento que receberá o ano que você nasceu 
# e outra variável com o nome ano_futuro que deverá ser atribuído o valor 2035.  
# Criar uma variável com o nome resultado para calcular a diferença. No final escreva na tela qual será a sua idade em 2035.


*** Settings ***


*** Variables ***
${ANO_NASCIMENTO}    ${2003}
${ANO_FUTURO}        ${2035}

*** Test Cases ***
Exercicio 4
    ${idade}      Evaluate    ${ANO_FUTURO} - ${ANO_NASCIMENTO}
    Log To Console    \nEu terei ${idade} anos em ${ANO_FUTURO}!