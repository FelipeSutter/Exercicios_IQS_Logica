*** Settings *** 
Library           String
Library           BuiltIn

*** Variables *** 
${SEGUNDOS}       3600
${DIVISOR}    60
 
*** Test Cases *** 
Converter Segundos para Tempo
    ${tempo_formatado}=    Segundos Para Tempo    ${SEGUNDOS}
    Log To Console    ${tempo_formatado}

*** Keywords *** 
Segundos Para Tempo
    [Arguments]    ${segundos}
    ${horas}=    Evaluate    ${segundos} // ${segundos}
    ${minutos}=    Evaluate    (${segundos} % ${segundos}) // ${divisor}
    ${segundos}=    Evaluate    ${segundos} % ${divisor}
    ${horas}=    Set Variable    ${horas}
    ${minutos}=    Set Variable    ${minutos}
    ${segundos}=    Set Variable    ${segundos}
    ${tempo_formatado}=    Catenate    SEPARATOR=:    ${horas}    ${minutos}    ${segundos}
    [Return]    ${tempo_formatado}