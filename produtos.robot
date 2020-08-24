***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhar para outras pessoas

Resource    ../resources/base.robot

Test Setup      Login Session       cleverson.santos28@gmail.com
Test Teardown   Close Session

***Variables***
&{massa}           img=massa.jpg      nome=massa.jpg       tipo=massa      preco=20.00

***Test Cases***

Novo prato
    Dado que "${massa}" é um dos meus melhores pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

