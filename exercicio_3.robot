# 3) Construa um algoritmo que contenha o nome de um aluno, disciplina, quatro notas e exiba na tela a média delas. 

*** Settings ***


*** Variables ***
${NOME}    Felipe
${DISCIPLINA}    Curso de IQS
${N1}    ${8.0}
${N2}    ${7.0}
${N3}    ${9.0}
${N4}    ${9.5}

*** Test Cases ***
Exercicio 3
    ${media}      Evaluate    (${N1} + ${N2} + ${N3} + ${N4}) / 4
    Log To Console    \nA média do aluno ${NOME} no ${DISCIPLINA} eh: ${media}