*** Settings ***
Documentation     Essa Suite, testa o site da Kabum
Resource          kabum_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Destaques"
    [Documentation]    Esse teste verifica o menu destaques do site da Kabum
    ...                E verifica a categoria de Automação
    [Tags]             menus  categorias
    Acessar a home page do site Kabum.com.br
    Entrar no menu "Destaques"
    Verificar se o título da página fica "KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina"
    Verificar se aparece o header "Destaques"
    Verificar se aparece a categoria "Automação"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Acessar a home page do site Kabum.com.br    
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verifica o resultado da pesquisa se está listando o produto "Console Microsoft Xbox Series S, 512GB, Branco - RRS-00006"