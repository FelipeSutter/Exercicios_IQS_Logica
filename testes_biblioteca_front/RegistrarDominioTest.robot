*** Settings ***
library     SeleniumLibrary
Resource    keywords.resource
library     String

Test Setup       Run Keywords
...              Open Browser    url=${URL}    browser=${BROWSER}    AND
...              Maximize Browser Window
Test Teardown    Close Browser

*** Test Cases ***
TC001 - Registrar Domínio como Gestor
    [Tags]    FluxoPrincipal
    ${NOME}     Generate Random String
    Efetuar Login com ${EMAIL} e ${SENHA}
    Clique e Aguarde o ${LANDING_BUTTON}
    Clique e Aguarde o ${DOMINIO_BUTTON}
    Clique e Aguarde o ${CADASTRAR_DOMINIO_BUTTON}
    Enviar Formulário com o ${NOME}
    Clique e Aguarde o ${MODAL_CONFIRM_BUTTON}

TC002 - Logout
    Efetuar Login com ${EMAIL} e ${SENHA}
    Clique e Aguarde o ${LOGOUT_BUTTON}
    Clique e Aguarde o ${LOGOUT_MODAL}

TC003 - Buscar Domínio cadastrado
    Efetuar Login com ${EMAIL} e ${SENHA}
    Clique e Aguarde o ${LANDING_BUTTON}
    Clique e Aguarde o ${DOMINIO_BUTTON}
    Clique e Aguarde o ${BUSCAR_DOMINIO_BUTTON}

TC004 - Registrar Categoria como Gestor
    ${NOME}     Generate Random String
    Efetuar Login com ${EMAIL} e ${SENHA}
    Clique e Aguarde o ${LANDING_BUTTON}
    Clique e Aguarde o ${CATEGORIA_BUTTON}
    Clique e Aguarde o ${CADASTRAR_CATEGORIA_BUTTON}
    # Enviar Formulário com o ${NOME}
    # Clique e Aguarde o ${MODAL_CONFIRM_BUTTON}
