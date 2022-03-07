*** Settings ***
Library          SeleniumLibrary
Resource        ./resource/base.robot
Resource        ./PO/title.robot
Resource        ./PO/login_form.robot
Resource        ./PO/cart.robot
Resource        ./PO/checkout.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão

*** Test Cases ***
Teste Cartão Para Todos
    Verificar titulo da página
    Login com Sucesso
    Ordenar os produtos do menor para maior preço e adicionar ao carrinho
    Checkout           
