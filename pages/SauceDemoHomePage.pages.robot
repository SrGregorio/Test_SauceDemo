*** Settings ***    

Resource        ../components/components.robot 
Resource        ../pages/commons/hooks.pages.commons.robot

*** Keywords ***
Validar a página através do titulo
    Title Should Be                 ${TITULO_PAGINA}            ${URL_HOST}

Inserir usuário
    Input Text                      ${CAMPO_USUARIO}            ${USUARIO}

Inserir senha   
    Input Text                      ${CAMPO_SENHA}              ${SENHA}                       

Inserir senha invalida   
    Input Text                      ${CAMPO_SENHA}              ${SENHA_INVALIDA}                       

Clicar no botão login    
    Click Button                    ${BOTAO_LOGIN}

Validar mensagem de usuário ou senha inválido
    Wait Until Element Is Visible       ${CAMPO_USER_INVALIDO}
    Page Should Contain Element         ${CAMPO_USER_INVALIDO}   
    
Validar a pagina de produtos
    Location Should Contain             ${URL_PRODUTOS}

Ordenar os produtos do menor para maior preço 
    Select from List By Index           ${ORDENA_PRECO}             ${ORDEM}  
    Page Should Contain                 ${VALIDA_ORDEM}  

Adicionar dois produtos ao carrinho
    Click Element                       ${PRIMEIRO_PRODUTO}
    Click Element                       ${SEGUNDO_PRODUTO} 

Clicar no botão carrinho    
    Click Element                       ${BOTAO_CARRINHO}

Clicar no botão Checkout    
    Click Element                       ${BOTAO_CHECKOUT}

Adicionar o primeiro nome ao campo do formulário       
    Input Text                          ${CAMPO_PRIMEIRO_NOME}      ${PRIMEIRO_NOME}
    Page Should Contain textfield                                   ${PRIMEIRO_NOME}

Adicionar ultimo nome ao campo do formulário    
    Input Text                          ${CAMPO_ULTIMO_NOME}        ${ULTIMO_NOME}
    Page Should Contain textfield                                   ${ULTIMO_NOME}  

Adidicionar código postal ao campo do formulário    
    Input Text                          ${CODIGO_POSTAL}            ${CEP}
    Page Should Contain textfield                                   ${CEP}

Clicar no botão continue    
    Click Button                        ${BOTAO_CONTINUE}

Clicar no botão finish    
    Click Button                        ${BOTAO_FINISH}

Validar a mensagem de confirmação de checkout
    Element Text Should Be              ${CAMPO_MENSAGEM}           ${MENSAGEM_VALIDACAO}   



 #Gherkin BDD
 
Dado que o usuário esteja na home page Saucedemo
    Validar a página através do titulo

Quando inserir um usuário 
    Inserir usuário 

E inserir a senha 
    Inserir senha

E inserir a senha invalida
    Inserir senha invalida

E clicar no botão login
   Clicar no botão login     

Então deve ser exibido a mensagem Epic sadface: Username and password do not match any user in this service
    Validar mensagem de usuário ou senha inválido

Quando o usuario fazer login com sucesso  
    Inserir usuário
    Inserir senha 
    Clicar no botão login 

Então deve exibir a página de produtos
    Validar a pagina de produtos

E ordenar a listagem de produtos do menor para o maior 
    Ordenar os produtos do menor para maior preço 

E adicionar dois produtos ao carrinho
    Adicionar dois produtos ao carrinho

E clicar no botão carrinho
    Clicar no botão carrinho

E clicar no botão checkout
    Clicar no botão Checkout

E preencher o formulário 
    Adicionar o primeiro nome ao campo do formulário
    Adicionar ultimo nome ao campo do formulário
    Adidicionar código postal ao campo do formulário

E clicar no botão continuar
    Clicar no botão continue 

E clicar no botão finish
    Clicar no botão finish 

Emtão validar a mensagem de confirmação de checkout
    Validar a mensagem de confirmação de checkout
