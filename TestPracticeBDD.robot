*** Settings ***
resource         ../Resource/resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

#Setup: roda keywords antes de uma suite ou antes de um Teste
#Teardown: roda keywords depois de uma suite ou depois de um Teste

***Variables ***
${BROWSER}      Chrome
${URL}          http://automationpractice.com

*** Test Case ***
Cenário 1: Pesquisar produto Existente
    Dado que eu estou na página HOME do site
    Quando eu pesquisar pelo produto "BLOUSE"
    Então o produto "BLOUSE" deve ser listado na página resultado da busca

Cenário 2: Pesquisar produto não Existente
    Dado que eu estou na página HOME do site
    Quando eu pesquisar o produto "ItemNãoExistente"
    Então a página deve exibir a mensagem: "No results were found for your search "ItemNãoExistente""

*** Keywords ***
Dado que eu estou na página HOME do site
    Acessar a página HOME do site

Quando eu pesquisar o produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão Pesquisar

Então o produto "${PRODUTO}" é listado na busca do site
    Conferir se o produto "${PRODUTO}" foi listado no site

Então a página deve exibir mensagem de erro  "${MENSAGEM_ALERTA}"
    Conferir mensagem de erro "${MENSAGEM_ALERTA}"
