*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${TIMEOUT} =  30
${MENU_CAMPO_PESQUISA} =  xpath://*[@id="search_query_top"]
${MENU_BT_PESQUISA} =  xpath://span[text()="Search"]/..

*** Keywords ***
Preencher a Pesquisa com
    [Arguments]  ${arg}
    Input Text  ${MENU_CAMPO_PESQUISA}  ${arg}  clear=True

Apertar no Botão Pesquisar
    Click Element  ${MENU_BT_PESQUISA}