*** Settings ***

Library    SeleniumLibrary

Suite Setup       Dado que o usuário acessa a tela de login
Suite Teardown    E fecha o navegador


*** Variables ***

${URL}                 http://localhost:3000
${BROWSER}             chrome

${INPUT_EMAIL}         xpath=//*[@id="root"]/div/form/div[1]/input
${INPUT_SENHA}         xpath=//*[@id="root"]/div/form/div[2]/input
${BOTAO_LOGIN}         xpath=//*[@id="root"]/div/form/button
${MENSAGEM}            xpath=//*[@id="root"]/div/div/div/div[1]/div/button


*** Test Cases ***

Deve realizar login com credenciais válidas

    Dado que o usuário informa o email    danielsouzalimabsb@gmail.com
    E informa a senha    masterkey
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem    Login realizado com sucesso


Deve validar usuário não encontrado

    Dado que o usuário informa o email    flaviodaniel@gmail.com
    E informa a senha    1234
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem    Usuário não encontrado.


Deve validar senha incorreta

    Dado que o usuário informa o email    danielsouzalimabsb@gmail.com
    E informa a senha    masterkey12
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem    Credenciais inválidas


Deve validar email obrigatório

    Dado que o usuário informa o email
    E informa a senha    masterkey
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem    Email obrigatório


Deve validar senha obrigatória

    Dado que o usuário informa o email    danielsouzalimabsb@gmail.com
    E informa a senha
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem    Senha obrigatória


*** Keywords ***

Dado que o usuário acessa a tela de login

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window


Dado que o usuário informa o email

    [Arguments]    ${email}=${EMPTY}
    Input Text    ${INPUT_EMAIL}    ${email}


E informa a senha

    [Arguments]    ${senha}=${EMPTY}
    Input Password    ${INPUT_SENHA}    ${senha}


Quando solicitar o login

    Click Button    ${BOTAO_LOGIN}


Então o sistema deve apresentar a mensagem

    [Arguments]    ${mensagem}
    Element Text Should Be    ${MENSAGEM}    ${mensagem}


E fecha o navegador

    Close Browser