*** Settings ***
Library       SeleniumLibrary

*** Keywords ***
Verificar titulo da página
    Title Should Be     Swag Labs       ${url}