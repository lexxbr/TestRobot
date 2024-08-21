*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}              https://robotizandotestes.blogspot.com/
${BROWSER}          edge
${BTN_PESQUISAR}    css=button.search-expand.touch-icon-button
${INPUT_PESQUISA}   name=q
${SUBMIT_PESQUISA}  css=input.search-action.flat-button
${LINK_POST}      xpath=//a[contains(.,'Season WEB Testing - Ep. 03: Open Browser - Chrome Options')]
${IMG_ROBO}       xpath=//img[contains(@data-original-width,'512')]

*** Keywords ***
Acessar a pagina do blog
  Open Browser      url=${URL}    browser=${BROWSER}
  Title Should Be   Robotizando Testes

Pesquisar por um post com "${TEXTO_PESQUISA}"
  Wait Until Element Is Visible   locator=${BTN_PESQUISAR} 
  Click Button   ${BTN_PESQUISAR}
  Input Text     ${INPUT_PESQUISA}    ${TEXTO_PESQUISA}
  Click Element  ${SUBMIT_PESQUISA}

Conferir Mensagem de pesquisa por "${MSG_DESEJADA}"
  Page Should Contain  text=${MSG_DESEJADA}

Fechar Navegador
  Close Browser

Acessar o post "${TEXTO_PESQUISA}"
  Pesquisar por um post com "${TEXTO_PESQUISA}"  

Conferir se a imagem do Robo aparece
  Wait Until Element Is Visible   locator=${LINK_POST} 
  Click Element  ${LINK_POST}
  Page Should Contain Image    ${IMG_ROBO}

Conferir se o texto "${TEXTO_DESEJADO}" aparece
  Page Should Contain   text=${TEXTO_DESEJADO}  