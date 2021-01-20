*** Test Cases ***

Teste FOR com numeração da lista
    FOR com numeração

*** Keywords ***

FOR com numeração
    FOR  ${index}  ${item}  IN ENUMERATE    P   M   G   GG   XG   XXG
        Log        Item da lista: ${item} - Posição do item na lista: ${index}
    END  