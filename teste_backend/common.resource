*** Settings ***

Library    Collections
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***

${BASE_URL}     https://restful-booker.herokuapp.com

${CONTRACT_DIR}     ${CURDIR}/contracts
${PAYLOAD_DIR}      ${CURDIR}/payloads

# CURDIR - variável padrão do robot que pega o diretório atual

*** Keywords ***
Validate Json
    [Arguments]    ${response}    ${filename}
    Validate Json By Schema File    ${response.json()}    ${CONTRACT_DIR}${/}${filename}

POST /auth
    [Arguments]    ${filename}
    ${body}    Load Json From File    ${PAYLOAD_DIR}${/}${filename}
    ${response}    POST    url=${BASE_URL}/auth    json=${body}
    RETURN    ${response}