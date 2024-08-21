*** Settings ***
Resource        ResourceBlogTest.robot
Test Setup      Acessar a pagina do blog
Test Teardown   Fechar Navegador


*** Test Cases ***
Caso de Teste 01: Pesquisar um post
  Pesquisar por um post com "Season WEB Testing - Ep. 03: Open Browser - Chrome Options" 
  Conferir Mensagem de pesquisa por "Mostrando postagens que correspondem à pesquisa por Season WEB Testing - Ep. 03: Open Browser - Chrome Options"

Caso de teste 02: Ler post
  Acessar o post "Season WEB Testing - Ep. 03: Open Browser - Chrome Options"
  Conferir se a imagem do Robo aparece
  Conferir se o texto "Oláááááá Robotizadores!! Fazia um tempinho que eu não postava aqui" aparece  