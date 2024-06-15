*** Settings ***

Resource    ../../../resources/libraries/bibliotecas.robot

*** Variables ***

${URL_BLOG_AGIBANK}    https://blogdoagi.com.br/
${TITULO_PAGINA_BLOG_AGIBANK}    Blog do Agi | Tudo sobre empréstimo e educação financeira
${CPO_INSCRICAO_EMAIL}    //input[contains(@required,'required')]
${BTN_INSCRICAO}    //button[@type='submit'][contains(.,'Inscrever-se')]
${MSG_INSCRICAO_BLOG}    xpath=//div[contains(@class, 'wpsm-thanks-message')]
${BTN_ENTENDI}    xpath=//a[contains(@class, 'wpsm-btn_submit') and contains(@class, 'wpsm-btn--primary')]
${MODAL_INSCRICAO}    xpath=//div[contains(@class, 'wpsm-modal') and contains(@class, 'show')]
${TXT_SOBRE_O_AUTOR}    //h3[contains(.,'Sobre o autor')]
  
#Botões do Menu
${BTN_AGIBANK}    O Agibank
${BTN_PRODUTOS}    Produtos
${BTN_SERVICOS}    Serviços
${BTN_SUAS_FINANCAS}    Suas finanças
${BTN_SUA_SEGURANCA}    Sua segurança
${BTN_STORIES}    Stories

#Botões Sub-menu O Agibank
${BTN_COLUNAS}    Colunas
${BTN_NOTICIAS}    Notícias
${BTN_CARREIRAS}    Carreira    

#Botões Sub-menu Produtos
${BTN_EMPRESTIMOS}    Empréstimos
${BTN_CONTA_CORRENTE}    Conta Corrente
${BTN_CARTOES}    Cartões 
${BTN_SEGUROS}    Seguros 
${BTN_INSS}    INSS
${BTN_CONSORCIOS}    Consórcios
${BTN_PIX}    Pix

#Botões Sub-menu Empréstimos
${BTN_EMPRESTIMO_CONSIGNADO}    Empréstimo Consignado
${BTN_EMPRESTIMO_PESSOAL}    Empréstimo Pessoal
${BTN_EMPRESTIMO_CONTA_LUZ}    Empréstimo na Conta de Luz



