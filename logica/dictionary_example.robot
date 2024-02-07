*** Settings ***


*** Variables ***
&{DICIONARIO_LIVROS}    a1b1=as estrelas    a2b2=era uma vez     a3b3=misterios
# chave = valor

*** Test Cases ***
Dictionary Example
    Log To Console    \n${DICIONARIO_LIVROS.a2b2}

    FOR  ${livro}  IN  &{DICIONARIO_LIVROS}
        Log To Console    \n${livro}
    END
    