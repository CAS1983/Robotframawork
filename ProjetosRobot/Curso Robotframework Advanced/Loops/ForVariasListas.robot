*** Test Cases ***

Teste FOR usando várias listas
    Cria dicionário de traduções

# Teste mais opções IN RANGE

*** Keywords ***

### Usando várias listas
Cria dicionário de traduções
    FOR        ${index}        ${english}        ${finnish}        ${portugues}    IN     
    ...        1                bear             Karhu              urso
    ...        2                wolf             Susi               Lobo
    ...        3                Ferret           Fretti             furão
        Log    Animal    ${index}:\nEn inglês: ${english}\nEn finlandês: ${finnish}\nEn português: ${portugues}
    END  
