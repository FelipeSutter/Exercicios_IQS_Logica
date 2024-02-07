*** Settings ***


*** Variables ***
${NAME}            Felipe Sutter
${AGE}             ${20}
${WEIGHT}          ${90.0}
${HEIGHT}          ${1.70}
${ESTADO_CIVIL}    Solteiro

*** Tasks ***
Variables Example
    ${AGE}    Evaluate    ${AGE} + 1
    ${WEIGHT}    Set Variable    70.0
    Log To Console    \nNome: ${NAME}\nIdade: ${AGE}\nPeso: ${WEIGHT}\nAltura: ${HEIGHT}\nEstado Civil: ${ESTADO_CIVIL}

