*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${ordenapreco}          xpath://select
${saucelabsbike}        id:add-to-cart-sauce-labs-bike-light
${saucelabsonesie}      id:add-to-cart-sauce-labs-onesie
${carrinho}             class:shopping_cart_badge
${checkout}             id:checkout

*** Keywords ***
Ordenar os produtos do menor para maior preço e adicionar ao carrinho

    Select from List By Index       ${ordenapreco}      2  
    Page Should Contain             Price (low to high)  

    Click Element                   ${saucelabsbike}
    Click Element                   ${saucelabsonesie} 
    Click Element                   ${carrinho}
    Click Element                   ${checkout}
