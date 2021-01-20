*** Test Cases ***
# Teste do novo formato do FOR

Teste for aninhado
    Criar cadastro de produto (FOR aninhado)

*** Keywords ***
### NOVO FORMATO ###

### FOR dentro de FOR (loop aninhado)
### Não é possível fazer aninhamentos diretamente
### É recomendado criar uma KW que chame a outra no laço

Criar cadastro de produto (FOR aninhado)
    FOR        ${produto}    IN  baby look  camiseta  blusa
        Imprime tamanhos para o produto  ${produto}
    END                 

Imprime tamanhos para o produto
    [Arguments]  ${produto}
    FOR  ${tamanho}  IN  P       M      G  
        Log    produto:  ${produto} - Tamanho: ${tamanho}
    END  

    