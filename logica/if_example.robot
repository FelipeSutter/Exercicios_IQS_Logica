*** Settings ***


*** Variables ***
${NOME}    Felipe


*** Test Cases ***
If Example
    IF  '${NOME}' == 'Raul'
        Log To Console    Bem-vindo, ${NOME}
    ELSE
        Log To Console    Acesso Negado! ${NOME}
    END
    

