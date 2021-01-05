*** Settings ***
Resource             ../Resource/AutomationPractice.robot
Resource             ../Resource/BDDpt-BR.robot
Resource             ../Resource/Comum.robot
Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador

*** Variables ***
${PESQUISA} =  Blouse

*** Test Case ***
Caso de teste 01: Pesquisar produto Existente
    Dado        Acessar a página HOME do Site
    Quando      Preencher o campo de pesquisa com   ${PESQUISA} 
    E           Clicar no Botão Pesquisar
    Então       Página retorna no resultado o produto  ${PESQUISA}