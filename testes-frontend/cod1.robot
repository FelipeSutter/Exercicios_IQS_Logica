*** Settings ***
library     SeleniumLibrary

Test Setup       Run Keywords
...              Open Browser    url=${URL}    browser=${BROWSER}    AND
...              Maximize Browser Window
# Test Teardown    Close Browser

*** Variables ***
${URL}     https://www.saucedemo.com/v1/
${BROWSER}    chrome
${USERNAME_VALIDO}    standard_user
${USERNAME_INVALIDO}    locked_out_user
${PASSWORD}    secret_sauce

### POM - Page Object Model

&{LOGIN_PAGE}
...    UsernameInput=id:user-name
...    PasswordInput=id:password
...    LoginButton=css:[class=btn_action]
...    ErrorMsg=xpath://h3[@data-test="error"]

*** Keywords *** 
# são funções basicamente
Realizar Login com ${username} e ${password}
    Input Text        ${LOGIN_PAGE.UsernameInput}    ${username}
    Input Text        ${LOGIN_PAGE.PasswordInput}    ${password}
    Click Element     ${LOGIN_PAGE.LoginButton}

Validar que o login foi feito com sucesso
    Wait Until Element Is Visible    css:.app_logo
    ${url} =     Get Location
    ${first}    Set Variable    /inventory.html
    Should Contain    ${url}    ${first}

Validar que o login não foi feito
    ${url} =     Get Location
    ${first}    Set Variable    /inventory.html
    Should Contain    ${url}    ${first}

*** Test Cases ***
TC001 - Realizar login com usuário válido
    Realizar Login com ${USERNAME_VALIDO} e ${PASSWORD} 
    Validar que o login foi feito com sucesso

TC002 - Realizar login com usuário inválido
    Realizar Login com ${USERNAME_INVALIDO} e ${PASSWORD} 
