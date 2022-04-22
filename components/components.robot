*** Settings ***
Documentation       Components File


*** Variables ***
${TITULO_PAGINA}            Swag Labs
${CAMPO_USUARIO}            id:user-name
${CAMPO_SENHA}              id:password
${USUARIO}                  standard_user
${SENHA}                    secret_sauce
${SENHA_INVALIDA}           ASDASDASD 
${BOTAO_LOGIN}              id:login-button
${CAMPO_USER_INVALIDO}      //h3[@data-test='error'][contains(.,'Epic sadface: Username and password do not match any user in this service')]
    
${URL_PRODUTOS}             https://www.saucedemo.com/inventory.html               
${ORDENA_PRECO}             xpath://select
${ORDEM}                    2
${VALIDA_ORDEM}             Price (low to high)
${PRIMEIRO_PRODUTO}         id:add-to-cart-sauce-labs-bike-light
${SEGUNDO_PRODUTO}          id:add-to-cart-sauce-labs-onesie
${BOTAO_CARRINHO}           class:shopping_cart_badge
${BOTAO_CHECKOUT}           id:checkout

${CAMPO_PRIMEIRO_NOME}      id:first-name        
${CAMPO_ULTIMO_NOME}        id:last-name
${PRIMEIRO_NOME}            Teste
${ULTIMO_NOME}              Teste    
${CODIGO_POSTAL}            id:postal-code
${CEP}                      40000000
${BOTAO_CONTINUE}           id:continue
${BOTAO_FINISH}             id:finish
${CAMPO_MENSAGEM}           class:complete-header
${MENSAGEM_VALIDACAO}       THANK YOU FOR YOUR ORDER 
