*** Test Cases ***
Teste do novo formato do FOR
    #Velho formato do FOR de listas
    Novo formato do FOR de listas

# Teste de FOR aninhado

*** Keywords ***
### NOVO FORMATO
#Velho formato do FOR de listas
    #:FOR   ${animal}    IN        gato          cachorro          cavalo
    #\    Log        o animal desse laço é:  ${animal} 
    #\    Log        vamos para o próximo animal da lista ...



Novo formato do FOR de listas
    FOR   ${animal}  IN  gato  cachorro  cavalo
        Log        o animal desse laço é:  ${animal}
        Log        vamos para o próximo animal da lista
    END

### FOR dentro de FOR (loop aninhado)




