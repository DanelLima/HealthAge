*** Settings ***
Library    SeleniumLibrary

Suite Setup       Dado que o usuário acessa a área de pacientes
Suite Teardown    E fecha o navegador

*** Variables ***
${URL}                    http://localhost:3000/paciente
${BROWSER}                chrome

${CAMPO_ID}               id=pacienteId
${BOTAO_BUSCAR}           id=btnBuscar
${MENSAGEM}               id=mensagem

${DADOS_PACIENTE}         id=dadosPaciente
${NOME_PACIENTE}          id=nomePaciente
${EMAIL_PACIENTE}         id=emailPaciente

*** Test Cases ***

01 - Deve permitir acesso ao próprio perfil
    Dado que o usuário informa o ID do paciente    100
    Quando solicitar a consulta do paciente
    Então os dados do paciente devem ser exibidos
    E o sistema não deve exibir a senha do usuário

02 - Deve bloquear tentativa de acesso a outro paciente
    Dado que o usuário informa o ID do paciente    101
    Quando solicitar a consulta do paciente
    Então o sistema deve apresentar a mensagem    Acesso não autorizado ao recurso solicitado.

03 - Deve impedir acesso sem autenticação
    Dado que o usuário acessa a consulta sem autenticação
    Então o sistema deve apresentar a mensagem    Não autorizado. Faça login para continuar.

04 - Deve informar quando o paciente não existir
    Dado que o usuário informa o ID do paciente    9999
    Quando solicitar a consulta do paciente
    Então o sistema deve apresentar a mensagem    Paciente não encontrado.

05 - Deve tratar erro interno do servidor
    Dado que ocorre uma falha interna no servidor
    Então o sistema deve apresentar a mensagem    Erro interno do servidor

*** Keywords ***

Dado que o usuário acessa a área de pacientes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Dado que o usuário informa o ID do paciente
    [Arguments]    ${id}
    Input Text    ${CAMPO_ID}    ${id}

Quando solicitar a consulta do paciente
    Click Button    ${BOTAO_BUSCAR}

Então os dados do paciente devem ser exibidos
    Page Should Contain Element    ${DADOS_PACIENTE}
    Page Should Contain Element    ${NOME_PACIENTE}

E o sistema não deve exibir a senha do usuário
    Page Should Not Contain    senha

Dado que o usuário acessa a consulta sem autenticação
    Go To    ${URL}
    Wait Until Page Contains    Não autorizado. Faça login para continuar.

Dado que ocorre uma falha interna no servidor
    Go To    ${URL}
    Wait Until Page Contains    Erro interno do servidor

Então o sistema deve apresentar a mensagem
    [Arguments]    ${mensagem}
    Element Text Should Be    ${MENSAGEM}    ${mensagem}

E fecha o navegador
    Close Browser