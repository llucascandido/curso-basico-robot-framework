*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}                chrome
${URL}                    https://www.kabum.com.br
${MENU_DESTAQUES}         //a[contains(.,'DESTAQUES')]
${HEADER_DESTAQUES}       //div[@class='sc-eldieg gDeDCz'][contains(.,'Destaques')]
${CATEGORIA_AUTOMACAO}    //a[contains(.,'Automação')]
${BOTAO_BUSCA}            //button[@class='sc-gJbFto hnDJPR']
${VERIFICA_PRODUTO}       //h2[@height='54'][contains(.,'Console Microsoft Xbox Series S, 512GB, Branco - RRS-00006')]

*** Keywords ***
Abrir o navegador
    Open Browser  browser=${BROWSER} 
    Maximize Browser Window

Fechar o navegador    
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Kabum.com.br
    Go To  url=${URL}
    Wait Until Element Is Visible    locator=${MENU_DESTAQUES}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Entrar no menu "Destaques"
    Click Element    locator=${MENU_DESTAQUES}

Verificar se aparece o header "${TEXT_HEADER_DESTAQUES}"
    Wait Until Page Contains    text=${TEXT_HEADER_DESTAQUES}
    Wait Until Element Is Visible    locator=${HEADER_DESTAQUES} 

Verificar se aparece a categoria "Automação"
    Wait Until Element Is Visible    locator=${CATEGORIA_AUTOMACAO}
    Click Element    locator=${CATEGORIA_AUTOMACAO}

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Input Text    locator=input-busca   text=${NOME_PRODUTO}

Clicar no botão de pesquisa
    Press Keys  None  ENTER

Verifica o resultado da pesquisa se está listando o produto "${VERIFICA_PRODUTO}"
    Wait Until Element Is Visible    locator=//h2[@height='54'][contains(.,'${VERIFICA_PRODUTO}')] 
