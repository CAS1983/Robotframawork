*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${TIMEOUT} =  30
${LANDINGPAGE_TAB_POPULAR} =  xpath://a[text()="Popular"]
${MENU_BT_PESQUISA} =  xpath://span[text()="Search"]/..

*** Keywords ***
Verificar se está na página Principal
    Wait Until Page Contains  Popular

Verificar se o Produto Pesquisado Aparece
    [Arguments]  ${arg}
    #Elemento em tela na primeira posição de resultado com o nome pesquisado
    ${LANDINGPAGE_RESULT}  Catenate  SEPARATOR=  //div[2]/h5/a[contains(text(),"  ${arg}  ")]
    Wait Until Element Contains  ${LANDINGPAGE_RESULT}  ${arg}  timeout=${TIMEOUT}

Verificar a Mensagem de Erro de Produto Inexistente
    Page Should Contain  No results were found for your search