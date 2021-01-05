*** Settings ***
Resource             ../Resource/resource.robot
Test Setup            Abrir Navegador
#Test Teardown         Fechar Navegador
*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    Chrome
*** Test Case ***
Cenário 01: Pesquisar produto Existente
    Dado que estou na página HOME do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca
Cenário 02: Pesquisar produto não existente
    Dado que estou na página HOME do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""
*** Keywords ***
Dado que estou na página HOME do site
    Acessar a página HOME do Site
Quando eu pesquisar pelo produto "Blouse"
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão Pesquisar
Então o produto "Blouse" deve ser listado na página de resultado da busca
    Conferir se o produto "Blouse" foi listado no site
Então a página deve exibir a mensagem "${MENSAGEM_ALERTA}"
    Conferir mensagem de erro "${MENSAGEM_ALERTA}"