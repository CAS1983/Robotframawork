*** Settings ***
Documentation        Exemplo de escopos de variáveis: GLOBAIS, SUITE, TESTE (test case) e Local (KW)
Library              String

*** Variables ***
${GLOBAL_INSTANCIADA}        Minha variável global foi instanciada para a SUITE

*** Test Cases ***
Caso de teste de exemplo 1:
    Uma KW qualquer 01
    Uma KW qualquer 02

Caso de teste de exemplo 2:
    Uma KW qualquer 02
    Uma KW qualquer 03

Caso de teste de exemplo 3:
    Uma KW qualquer 04

*** Keywords ***
Uma KW qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}        Generate Random String
    #A variavel "global" pode ser usada em todos os suites em execução
    Set Global Variable        ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}
    #A variável SUITE pode ser usada somente em testes da suite em execução
    Set Suite Variable        ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}        variavel da suite 
    #A variavel test pode ser usada em todas as KW do teste em execução 
    Set Test Variable        ${TESTE_01} variável do teste 01
    Log        ${TESTE_01}
    #A variavel "local" pode ser usada somente na KW em execução
    ${LOCAL}        Set Variable        variável local da KW 01

Uma KW qualquer 02
    ${LOCAL}        Set Suite Variable        variável local da KW 02
    Log        ${LOCAL}
    Log        ${GLOBAL_INSTANCIADA}/${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}/${SUITE_CRIADA_EM_TEMPO_EXECUCAO}/${LOCAL}
    #A KW abaixo vai funcionar no teste 01 e falhar no teste 02
    Log        ${TESTE_01}

Uma KW qualquer 03
${LOCAL}        Set Variable        variável local da KW 03
Log        ${LOCAL}
Log        ${GLOBAL_INSTANCIADA}/${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}/${SUITE_CRIADA_EM_TEMPO_EXECUCAO}/${LOCAL}

Uma KW qualquer 04
${LOCAL}        Set Variable        variável local da KW 04
Log        ${LOCAL}
Log        ${GLOBAL_INSTANCIADA}/${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}/${SUITE_CRIADA_EM_TEMPO_EXECUCAO}/${LOCAL}