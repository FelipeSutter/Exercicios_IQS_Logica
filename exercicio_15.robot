# 15) Implemente um programa que considera as seguintes opções para determinar se o usuário 
# usará a fila preferencial ou a fila comum. 

# O usuário usa a fila preferencial caso : 
#  Possui mais de 65 anos : Usa fila preferencial 
#  É deficiente físico : Usa fila preferencial 
#  É gestante : Usa fila preferencial 

O programa recebe como entrada nome, a idade, e a condição especial do usuário, se houver. 

*** Settings ***


*** Variables ***
${IDADE}                  ${10}
${CONDICAO_ESPECIAL}      S

*** Test Cases ***
Exercicio 15
    IF  ((${IDADE} >= 65) or "${CONDICAO_ESPECIAL}" == "S")
        Log To Console    \nFila preferencial
    ELSE
        Log To Console    \nFila Comum
    END