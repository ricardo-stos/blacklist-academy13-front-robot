*** Settings ***
Library        SeleniumLibrary
Library        String

*** Variables ***
${URL}                https://black-list-front.qacoders.dev.br/login
${login}              sysadmin@qacoders.com
${password}           1234@Test
${Inserir_e-mail}     //*[@id="email"]
${Inserir-senha}     //*[@id="password"]
${Botao-entrar}      //button[normalize-space()='Entrar']
${Clicar-Cadastro}   //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig']
${Clicar-Departamento}      //span[normalize-space()='Departamento']
${Botão-Avançar}        //button[3]//*[name()='svg']
${Botão-Voltar}      //button[@id='backButton']//*[name()='svg']
${Botão-Avançar-Ultima-Página}      //button[4]
${Botão-Voltar-Primeira-Página}     //button[@id='firstIndexButton']


*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}   headlessFirefox 
    Maximize Browser Window

Fechar Navegador
    Close Browser

Passo 1 - Acessar a tela de login
    Abrir Navegador
    Wait Until Element Is Visible    locator=${Inserir_e-mail} 
    Input Text            locator=${Inserir_e-mail}        text=${login} 
    Sleep    1s

Passo 2 - Preencher o campo de senha
      Wait Until Element Is Visible    locator=${Inserir_e-mail} 
    Input Password           locator=${Inserir-senha}        password=${password} 
    Sleep    1s  

Passo 3 - Clicar no botão entrar
    Wait Until Element Is Visible    locator=${Botao-entrar} 
    Click Button            locator=${Botao-entrar} 
    Sleep    1s

Passo 4 - Clicar em Cadastro
    Wait Until Element Is Visible    locator=${Clicar-Cadastro} 
    Click Element            locator=${Clicar-Cadastro} 
    Sleep    1s

Passo 5 - Clicar em Departamento
    Wait Until Element Is Visible    locator=${Clicar-Departamento} 
    Click Element            locator=${Clicar-Departamento} 
    Sleep    1s

Passo 6 - Clicar no botão avançar
    Wait Until Element Is Visible    locator=${Botão-Avançar} 
    Click Element            locator=${Botão-Avançar} 
    Sleep    1s

Passo 7 - Clicar no botão voltar
    Wait Until Element Is Visible    locator=${Botão-Voltar} 
    Click Element            locator=${Botão-Voltar} 
    Sleep    1s


Passo 8 - Clicar no botão avançar na última página
    Wait Until Element Is Visible    locator=${Botão-Avançar-Ultima-Página} 
    Click Button            locator=${Botão-Avançar-Ultima-Página} 
    Sleep    1s

Passo 9 - Clicar no botão voltar na primeira página
    Wait Until Element Is Visible    locator=${Botão-Voltar-Primeira-Página} 
    Click Button            locator=${Botão-Voltar-Primeira-Página} 
    Sleep    1s