*** Settings ***
Library       SeleniumLibrary

*** Variables ***

${firstname}        id:first-name        
${lastname}         id:last-name
${postalcode}       id:postal-code
${clkelement}       id:continue
${btnfinish}        id:finish
${message.text}     class:complete-header


*** Keywords ***
Checkout        
    Input Text                          ${firstname}        Renato 
    Page Should Contain textfield                           Renato        
    
    Input Text                          ${lastname}         Assis
    Page Should Contain textfield                           Assis  
    
    Input Text                          ${postalcode}       40000000
    Page Should Contain textfield                           40000000  
    
    Click Button                        ${clkelement}
    Click Button                        ${btnfinish}
    Element Text Should Be              ${message.text}     THANK YOU FOR YOUR ORDER