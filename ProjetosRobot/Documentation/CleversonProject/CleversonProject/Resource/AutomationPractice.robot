*** Settings ***
Resource    PO/MenuSuperior.robot
Resource    PO/PaginaDestino.robot

*** Variable ***


*** Keywords ***
Acessar a página HOME do Site
    PaginaDestino.Verificar se está na página Principal

Preencher o campo de pesquisa com
    [Arguments]  ${arg}
    MenuSuperior.Preencher a Pesquisa com  ${arg}

Clicar no Botão Pesquisar
    MenuSuperior.Apertar no Botão Pesquisar

Página retorna no resultado o produto
    [Arguments]  ${arg}
    PaginaDestino.Verificar se o Produto Pesquisado Aparece  ${arg}


