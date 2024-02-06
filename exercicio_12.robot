# 12) Criar um algoritmo que a partir de quatro notas calcule a média. 
# Se a média for maior que 7 deverá ser exibida a mensagem aprovado, caso contrário deverá ser exibida a mensagem reprovado. 

*** Settings ***


*** Variables ***
${NOME}    Felipe
${DISCIPLINA}    Curso de IQS
${N1}    ${8.0}
${N2}    ${7.0}
${N3}    ${9.0}
${N4}    ${9.5}

*** Test Cases ***
Exercicio 12
    ${media}      Evaluate    (${N1} + ${N2} + ${N3} + ${N4}) / 4
    IF  ${media} >= 7.0
        Log To Console    \nMédia: ${media} - Aprovado!
    ELSE
        Log To Console    \nMédia: ${media} - Reprovado!
    END