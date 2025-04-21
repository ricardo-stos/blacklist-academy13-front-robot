*** Settings ***
Resource    ../Resource/lista_departamento.resource




*** Test Cases ***
CT01 Listar Departamento caminho feliz

    Passo 1 - Acessar a tela de login
    Passo 2 - Preencher o campo de senha
    Passo 3 - Clicar no botão entrar
    Passo 4 - Clicar em Cadastro
    Passo 5 - Clicar em Departamento
    Passo 6 - Clicar no botão avançar
    Passo 7 - Clicar no botão voltar
    Passo 8 - Clicar no botão avançar na última página
    Passo 9 - Clicar no botão voltar na primeira página