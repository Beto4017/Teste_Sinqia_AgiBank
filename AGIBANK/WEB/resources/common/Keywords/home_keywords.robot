*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
Library    XML
Library    String
Library    Collections 
Resource    ../../../resources/libraries/bibliotecas.robot

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a pagina
    [Arguments]    ${URL_PAGINA}
    Go To    ${URL_PAGINA}

Click botão menu
    [Arguments]    ${NOME_BTN_MENU} 
    Click Element    (//span[@class='menu-text'][contains(.,'${NOME_BTN_MENU}')])[1]      

Validar titulo da pagina
    [Arguments]    ${TITULO_1}    ${TITULO_2}
    Should Be Equal As Strings    ${TITULO_1}    ${TITULO_2}

Validar Sub-titulo da pagina
    [Arguments]    ${SUB_TITULO}    ${TXT}
    Element Text Should Be    //h1[@class='page-title ast-archive-title'][contains(.,'${SUB_TITULO}')]    ${TXT}

Mouse    
    [Arguments]    ${NOME_MENU}
    Mouse Over    (//span[@class='menu-text'][contains(.,'${NOME_MENU}')])[1]

Scroll na pagina
    [Arguments]   ${ELEMENTO}
    Scroll Element Into View    ${ELEMENTO}

Preencher campo
    [Arguments]    ${NOME_CPO}    ${TXT}
    Input Text    ${NOME_CPO}    ${TXT}

Gerar Email
    ${GERA_NOME}=    Generate Random String    length=5    chars=[LETTERS]
    ${GERA_NOME}    Convert To Upper Case   ${GERA_NOME}
    ${GERA_EMAIL}    Set Variable    ${GERA_NOME}@testeagibank.com.br
    Return From Keyword    ${GERA_EMAIL}

Selecionar Frame 
    Wait Until Element Is Visible    xpath=//iframe[contains(@frameborder,'0')]
    Select Frame    xpath=//iframe[contains(@frameborder,'0')]
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'wpsm-modal') and contains(@class, 'show')]

Clicar no botão Ler Texto
    [Arguments]    ${NUM_BTN}  
    Click Element    (//a[contains(.,'Ler texto')])[position()=${NUM_BTN}]

    
    
    
   
    
       

 

