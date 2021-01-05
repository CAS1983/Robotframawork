*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${BROWSER} =  chrome

*** Keywords ***
Abrir Navegador
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window  
    Go To  http://automationpractice.com

Fechar Navegador
    Close All Browsers