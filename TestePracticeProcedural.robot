*** Settings ***
resource            ../Resource/resource.robot
Test Setup          Abrir navegador
#Test Teardown       Fechar navegador

#Setup: roda keywords antes de uma suite ou antes de um Teste
#Teardown: roda keywords depois de uma suite ou depois de um Teste

*** Test Case ***
Teste Case 001: Pesquisar produto existente
    Acessar a página HOME do site
    Digitar o nome do produto "BLOUSE" no campo de pesquisa
    Clicar no botão pesquisar
#     Conferir se o produto "BLOUSE" foi listado no site
#
# Teste Case 002: Pesquisar produto não existente
#     Acessar a página HOME do site
#     Digitar o nome do produto "ItemNãoExistente" na Pesquisa
#     Clicar no botão Pesquisar
#     Conferir mensagem de erro: "No results were found for your search "ItemNãoExistente""
#
# *** Keywords ***
