*** Settings ***
Resource    common.resource

*** Test Cases ***
TC 2: obter reservas
    ${response}    GET /booking

    Status Should Be    200
    Validate Json    ${response}    GetBooking.json

TC 3: Obter reserva por ID
    ${response}    GET /booking
    ${id}    Select Random BookingId From Json    ${response}

    ${response}    GET /booking/${id}

    Status Should Be    200
    Validate Json    ${response}    GetBookingIds.json

TC 4: substituir reserva
    [Setup]    Wrapper POST /auth

    ${response}    POST /auth    PostAuthValid.json
    ${token}    Set Variable    ${response.json()}[token]

    ${response}    GET /booking
    ${id}    Select Random BookingId From Json    ${response}

    ${newResponse}    PUT /booking/${id}    PutBooking.json

    Status Should Be    200
    Validate Json    ${newResponse}    UpdateBooking.json

    ${response}       GET /booking/${id}

    Status Should Be    200
    Dictionaries Should Be Equal    ${response.json()}    ${newResponse.json()}

TC 5: criar reserva
    ${response}    POST /booking    PostBooking.json

    Status Should Be    200
    Validate Json    ${response}    CreateBooking.json

    ${id}         Set Variable    ${response.json()}[bookingid]
    ${booking}    Set Variable    ${response.json()}[booking]

    ${response}    GET /booking/${id}

    Status Should Be    200
    Dictionaries Should Be Equal    ${booking}    ${response.json()}
