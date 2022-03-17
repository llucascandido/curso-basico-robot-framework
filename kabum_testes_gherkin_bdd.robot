*** Settings ***
Documentation     Essa Suite, testa o site da Kabum
Resource          kabum_resources_gherkin_bdd.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Destaques"
    [Documentation]    Esse teste verifica o menu destaques do site da Kabum
    ...    E verifica a categoria de Automação
    [Tags]    menus    categorias
    Dado que estou na home page da Kabum.com.br
    Quando acessar o menu "Destaques"
    Então deve aparecer o título da página "KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina"
    E verificar se aparece o header "Destaques"
    E verificar se aparece a categoria "Automação"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]    busca_produtos    lista_busca
    # Dado que estou na home page da Kabum.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    E aperto enter
    Então verifica o resultado da pesquisa se está listando o produto "Console Microsoft Xbox Series S, 512GB, Branco - RRS-00006"

