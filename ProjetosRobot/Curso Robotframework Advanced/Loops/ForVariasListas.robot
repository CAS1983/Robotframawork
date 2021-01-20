*** Test Cases ***

Teste FOR usando várias listas
    Cria dicionário de traduções

# Teste mais opções IN RANGE

*** Keywords ***

### Usando várias listas
Cria dicionário de traduções
    FOR        ${index}        ${english}        ${finnish}        ${portugues}    IN     
    ...        1                Cat              kissa              gato
    ...        2                dog              koira              cachorro
    ...        3                horse            hevonen            cavalo
        Log    Animal    ${index}:\nEn inglês: ${english}\nEn finlandês: ${finnish}\nEn português: ${portugues}
    END  