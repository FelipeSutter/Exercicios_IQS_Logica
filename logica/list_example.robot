*** Settings ***


*** Variables ***
@{LISTA_VEICULOS}    carro    aviao    moto

*** Test Cases ***
List Example
    Log To Console    \nPrimeiro item: ${LISTA_VEICULOS}[0]
    FOR  ${veiculo}  IN  @{LISTA_VEICULOS}
        Log To Console    Veiculo: ${veiculo}
    END
    