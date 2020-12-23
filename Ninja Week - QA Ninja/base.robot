***Settings***
Documentation       Aqui temos a estrutura base do projeto, o Selenium é  importante aqui

Library     SeleniumLibrary

Resource    elements.robot
Resource    kws.robot
Resource    helpers.robot

***Variables***
${base_url}         http://ninjachef-qaninja-io.umbler.net/ 

***Keywords***

## Hooks
Open Session
    Open Browser        about:blank     chrome
	
Close Session
    Capture Page Screenshot
    Close Browser