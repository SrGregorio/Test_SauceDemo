*** Settings ***

Resource        ../pages/SauceDemoHomePage.pages.robot


Test Setup          Start Test
Test Teardown       Finish Test       

*** Test Cases ***

Cenário 01 - Fazer validação de um usuário ou senha inválido
    [Documentation]     Esse teste utiliza um usuário ou senha inválidos, valida no site
    ...                 e deve retornar a mensagem "Epic sadface: Username and password do not match any user in this service".
    [Tags]              login_usuario
    Dado que o usuário esteja na home page Saucedemo
    Quando inserir um usuário
    E inserir a senha invalida
    E clicar no botão login
    Então deve ser exibido a mensagem Epic sadface: Username and password do not match any user in this service

Cenário 02 - Fazer a compra de dois produtos
    [Documentation]     Nesse teste efetuaremos a compra de dois produtos.
    [Tags]              busca_produto 
    Dado que o usuário esteja na home page Saucedemo
    Quando o usuario fazer login com sucesso  
    Então deve exibir a página de produtos
    E ordenar a listagem de produtos do menor para o maior 
    E adicionar dois produtos ao carrinho
    E clicar no botão carrinho
    E clicar no botão checkout
    E preencher o formulário 
    E clicar no botão continuar
    E clicar no botão finish
    Emtão validar a mensagem de confirmação de checkout