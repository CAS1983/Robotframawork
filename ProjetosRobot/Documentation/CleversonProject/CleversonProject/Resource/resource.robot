*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL}                      http://automationpractice.com
${BROWSER}                  Chrome
${PRODUTO}                  "Blouse"
${MENSAGEM_ALERTA}          "No results were found for your search "produtoNãoExistente"" 
*** Keywords ***
###Setup e Teardown###
Abrir Navegador
    Open Browser            about:blank        ${BROWSER}
    Go To                   http://automationpractice.com
Fechar Navegador
    Close Browser
###Passo-a-Passo###
Acessar a página HOME do Site
    Title Should Be         My Store

Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text             name=search_query        ${PRODUTO}

Clicar no botão Pesquisar     
    Click Element        name=submit_search

Conferir se o produto "Blouse" foi listado no site
    Wait Until Element is Visible        css=#center_column > h1
    Title Should Be                      Search - My Store
    Page Should Contain image            xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Page Should Contain Link             xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a                
Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    Wait Until Element is Visible        //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be               //*[@id="center_column"]/p[@class='alert alert-warning']        ${MENSAGEM_ALERTA}