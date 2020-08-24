***settings***
Documentation       Suite dos testes de cadastro

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cadastro Simples
    Dado que acesso a página principal
    Quando submeto o meu email "cleverson.santos28@gmail.com"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a página principal
    Quando submeto o meu email "cleverson.santos28&gmail.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"
    