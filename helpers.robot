***Settings***
Documentation       Aqui teremos palavras chaves de apoio

***Keywords***
login Session
    [Arguments]     ${email}

    base.Open Session

    Go to     ${base_url}

    Input Text       ${CAMPO_EMAIL}       ${email}
    Click Element    ${BOTAO_ENTRAR} 

    Wait Until Page Contains Element    ${DIV_DASH}