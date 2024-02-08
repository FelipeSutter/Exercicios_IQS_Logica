*** Settings ***
Resource    common.resource

*** Test Cases ***
TC 1.1: Realizar autenticação com usuário válido
    [Tags]    fluxo-principal    POST    TC01
    ${response}    POST /auth    PostAuthValid.json

    Status Should Be    200
    Validate Json    ${response}    CreateTokenValid.json

TC 1.2: realizar autenticação com usuário inválido
    ${response}    POST /auth    PostAuthInvalid.json


    Status Should Be    200
    Validate Json    ${response}    CreateTokenInvalid.json
