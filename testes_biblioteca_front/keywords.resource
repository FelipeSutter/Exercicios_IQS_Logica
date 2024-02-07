*** Settings ***
Resource    variables.resource
Library    SeleniumLibrary

*** Keywords ***
Efetuar Login com ${username} e ${password}
    Input Text        ${LOGIN_PAGE.EmailInput}       ${username}
    Input Text        ${LOGIN_PAGE.PasswordInput}    ${password}
    Click Element     ${LOGIN_PAGE.LoginButton}

Clique e Aguarde o ${button}
    Sleep    2s
    Click Element    ${button}

Enviar Formulário com o ${input}
    Input Text       ${CADASTRAR_DOMINIO_PAGE.NameInput}    ${input}
    Click Element    ${CADASTRAR_DOMINIO_PAGE.CadastrarButton}

Enviar Formulário com a ${categoria} e o ${dominio}
    Input Text        ${CADASTRAR_CATEGORIA_PAGE.NameInput}        ${categoria}
    Input Text        ${CADASTRAR_CATEGORIA_PAGE.DominioSelect}    ${dominio}
    # Fazer o select da página    