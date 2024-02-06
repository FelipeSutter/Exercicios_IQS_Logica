# 5) Uma empresa paga R$10.00 por hora normal trabalhada e R$ 15.00 por hora extra. 
# Escreva um algoritmo que a partir de um total de horas normais trabalhadas 
# e um total de horas extras trabalhadas por um empregado em um ano calcule o salário anual deste trabalhador. 

# Entrada :  horas trabalhadas no ano : 1760 

# horas extras trabalhadas no ano : 400 

# Saída :    Seu salário anual é de : R$ 23600 


*** Settings ***


*** Variables ***
${HORAS_TRABALHADAS}    ${1760}
${HORAS_EXTRAS}         ${400}

*** Test Cases ***
Exercicio 5
    ${salarioTotal}      Evaluate    (${HORAS_TRABALHADAS} * 10.0) + (${HORAS_EXTRAS} * 15.0)
    Log To Console    \nO salário anual é de: ${salarioTotal}