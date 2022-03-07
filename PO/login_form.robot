*** Settings ***
Library       SeleniumLibrary


*** Variables ***
${username}     id:user-name
${password}     id:password
${btnlogin}     id:login-button    

*** Keywords ***
Login com Sucesso
    Input Text                          ${username}     standard_user
    Page Should Contain Textfield                       standard_user                         
    
    Input Text      ${password}                         secret_sauce   
    Page Should Contain Textfield                       secret_sauce  
    
    Click Button    ${btnlogin}
