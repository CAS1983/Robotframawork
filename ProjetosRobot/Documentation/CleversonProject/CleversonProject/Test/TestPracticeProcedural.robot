*** Settings ***
Resource             ../Resource/resource.robot
Test Setup            Abrir Navegador
Test Teardown         Fechar Navegador
###Setup - Roda KW antes da suite ou antes de um teste
###Teardown - Roda KW depois de uma suite ou depois de um teste
*** Test Case ***
Caso de teste 01: Pesquisar produto Existente
    #[Setup]        Fechar navegador Firefox
    Acessar a página HOME do Site
    Digitar o nome do produto "Blouse" no campo de Pesquisa
    Clicar no botão Pesquisar
    Conferir se o produto "Blouse" foi listado no site
    #[Teardown]        Fechar Navegador Firefox
Caso de teste 02: Pesquisar produto não existente
    Acessar a página HOME do Site
    Digitar o nome do produto "produtoNãoExistente" no campo de Pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem de erro "No results were found for your search "produtoNãoExistente""
*** Keywords ***