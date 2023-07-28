*** Settings ***
Documentation   Teste
Library     SeleniumLibrary
Suite Setup     Abre Navegador
Suite Teardown     Close Browser

*** Variables ***
${BROWSER} =     Chrome
${PAGE} =     https://www.google.com
${SEARCH} =     Você é uma tapada.

*** Tasks ***
Procura no Youtube
    Pesquisar

*** Keywords ***
Abre Navegador
    Create Webdriver     ${BROWSER}
    Go to     ${PAGE}
    Maximize Browser Window
    Set Selenium Speed     1 second

Pesquisar
    input text     class:gLFyf   ${SEARCH}
    click element     class:gNO89b