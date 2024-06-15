*** Settings ***

Resource    ../resources/libraries/bibliotecas.robot
Resource    ../resources/common/Keywords/home_keywords.robot
Resource    ../resources/common/variables/home_variables.robot
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

TC 001 - Acessar a home principal do Blog AGIBANK
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar e validar a home principal do Blog AGIBANK
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    ${TITULO_PAGINA}=    Get Title
    Validar titulo da pagina    ${TITULO_PAGINA}    ${TITULO_PAGINA_BLOG_AGIBANK}

TC 002 - Acessar o menu - O AGIBANK
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Agibank e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_AGIBANK}
    Validar Sub-titulo da pagina    ${BTN_AGIBANK}    O Agibank
    
TC 003 - Acessar o sub-menu - Colunas 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Colunas e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             Sub-menu-agibank
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_AGIBANK}
    Click botão menu    ${BTN_COLUNAS}
    Validar Sub-titulo da pagina    ${BTN_COLUNAS}    Colunas

TC 004 - Acessar o sub-menu - Noticias 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Notícias e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             Sub-menu-agibank
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_AGIBANK}
    Click botão menu    ${BTN_NOTICIAS}
    Validar Sub-titulo da pagina    ${BTN_NOTICIAS}    Notícias

TC 005 - Acessar o sub-menu - Carreira 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Carreira e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             Sub-menu-agibank
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_AGIBANK}
    Click botão menu    ${BTN_CARREIRAS}
    Validar Sub-titulo da pagina    ${BTN_CARREIRAS}    Carreira

TC 006 - Acessar o menu - Produtos
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Produtos e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_PRODUTOS}
    Validar Sub-titulo da pagina    ${BTN_PRODUTOS}    Produtos

TC 007 - Acessar o sub-menu - Empréstimos 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Empréstimos e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Emprestimo
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_EMPRESTIMOS}
    Validar Sub-titulo da pagina    ${BTN_EMPRESTIMOS}    Empréstimos

TC 008 - Acessar o sub-menu - Empréstimos - Empréstimo Consignado 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Empréstimos - Empréstimo Consignado  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Emprestimo
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Mouse    ${BTN_EMPRESTIMOS}
    Click botão menu    ${BTN_EMPRESTIMO_CONSIGNADO}
    Validar Sub-titulo da pagina    ${BTN_EMPRESTIMO_CONSIGNADO}    Empréstimo Consignado

TC 009 - Acessar o sub-menu - Empréstimos - Empréstimo Pessoal 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Empréstimos - Empréstimo Pessoal  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Emprestimo
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Mouse    ${BTN_EMPRESTIMOS}
    Click botão menu    ${BTN_EMPRESTIMO_PESSOAL}
    Validar Sub-titulo da pagina    ${BTN_EMPRESTIMO_PESSOAL}    Empréstimo Pessoal

TC 010 - Acessar o sub-menu - Empréstimos - Empréstimo na Conta de Luz
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Empréstimos - Empréstimo na Conta de Luz  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Emprestimo
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Mouse    ${BTN_EMPRESTIMOS}
    Click botão menu    ${BTN_EMPRESTIMO_CONTA_LUZ}
    Validar Sub-titulo da pagina    ${BTN_EMPRESTIMO_CONTA_LUZ}    Empréstimo na Conta de Luz

TC 011 - Acessar o sub-menu - Conta Corrente
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Conta Corrente  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-ContaCorrente
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_CONTA_CORRENTE}
    Validar Sub-titulo da pagina    ${BTN_CONTA_CORRENTE}    Conta Corrente

TC 012 - Acessar o sub-menu - Cartões
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Cartões  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Cartoes
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_CARTOES}
    Validar Sub-titulo da pagina    ${BTN_CARTOES}    Cartões

TC 013 - Acessar o sub-menu - Seguros
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Seguros  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Seguros
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_SEGUROS}
    Validar Sub-titulo da pagina    ${BTN_SEGUROS}    Seguros

TC 014 - Acessar o sub-menu - INSS
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu INSS  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-INSS
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_INSS}
    Validar Sub-titulo da pagina    ${BTN_INSS}    INSS

TC 015 - Acessar o sub-menu - Consórcios
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Consórcios  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Consorcios
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_CONSORCIOS}
    Validar Sub-titulo da pagina    ${BTN_CONSORCIOS}    Consórcios

TC 016 - Acessar o sub-menu - Pix
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o sub-menu Pix  
    ...                e validar se o acesso foi efetuado com sucesso
    [Tags]             Sub-menu-Produtos-Pix
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Mouse    ${BTN_PRODUTOS}
    Click botão menu    ${BTN_PIX}
    Validar Sub-titulo da pagina    ${BTN_PIX}    Pix

TC 017 - Acessar o menu - Serviços
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Serviços e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_SERVICOS}
    Validar Sub-titulo da pagina    ${BTN_SERVICOS}    Serviços

TC 018 - Acessar o menu - Suas finanças
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Suas finanças e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_SUAS_FINANCAS}
    Validar Sub-titulo da pagina    ${BTN_SUAS_FINANCAS}    Suas finanças

TC 019 - Acessar o menu - Sua segurança
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Sua segurança e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_SUA_SEGURANCA}
    Validar Sub-titulo da pagina    ${BTN_SUA_SEGURANCA}    Sua segurança

TC 020 - Acessar o menu - Stories
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar o menu Stories e validar se o acesso foi 
    ...                efetuado com sucesso
    [Tags]             home
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    Click botão menu    ${BTN_STORIES}
    Validar Sub-titulo da pagina    Story    Story

TC 021 - Realizar incrição no blog Agibank 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                realizar a inscrição no Blog AGIBANK
    [Tags]             home
    ${EMAIL_FAKE}    Gerar Email
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    ${TITULO_PAGINA}=    Get Title
    Validar titulo da pagina    ${TITULO_PAGINA}    ${TITULO_PAGINA_BLOG_AGIBANK}
    Scroll na pagina    ${CPO_INSCRICAO_EMAIL}
    Preencher campo    ${CPO_INSCRICAO_EMAIL}    ${EMAIL_FAKE}
    Click Button    ${BTN_INSCRICAO}
    Selecionar Frame
    ${TXT_INSCRICAO}    Get Text    ${MSG_INSCRICAO_BLOG}
    Element Should Contain    ${MODAL_INSCRICAO}    ${TXT_INSCRICAO}
    Click Element    ${BTN_ENTENDI}
    Wait Until Element Is Not Visible    ${MODAL_INSCRICAO}

TC 022 - Acessar uma notícia do blog Agibank 
    [Documentation]    Esse caso de teste tem como objetivo
    ...                acessar uma notícia do blog através do botão Ler texto
    [Tags]             home
    ${EMAIL_FAKE}    Gerar Email
    Acessar a pagina    ${URL_BLOG_AGIBANK}
    ${TITULO_PAGINA}=    Get Title
    Validar titulo da pagina    ${TITULO_PAGINA}    ${TITULO_PAGINA_BLOG_AGIBANK}
    Clicar no botão Ler Texto    1    
    Page Should Contain Element    ${TXT_SOBRE_O_AUTOR}


    






