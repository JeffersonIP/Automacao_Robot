***Settings***

Library     AppiumLibrary

***Test Cases***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains            Training Wheels Protocol    5
    Wait Until Page Contains            Mobile Version
    # BOTAO COMECAR
    Wait Until Page Contains Element    class=android.widget.Button
    Click Element                       class=android.widget.Button
    # BOTAO LISTA
    Wait Until Page Contains            LISTA
    Click Text                          LISTA
    Wait Until Page Contains            LISTA
    Wait Until Page Contains            Thor
    Click Text                          Thor
    Wait Until Page Contains            Capitão América
    Click Text                          Capitão América
    Wait Until Page Contains            Homem de Ferro
    Click Text                          Homem de Ferro
    # Swipe    940    1502    923    351
    # Wait Until Page Contains            Hulk
    # Click Text                          Hulk
    
    Close Application
    # Wait Until Page Contains Element    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]            
    # Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    # Click Element                       class=android.widget.TextView
    # Wait Until Page Contains Element    xpath=(//android.widget.ImageView[@content-desc="Icon"])[1]        
    # Click Element                       xpath=(//android.widget.ImageView[@content-desc="Icon"])[1]
    # # Wait Until Page Contains            Capitão América
    # Click Text                          Capitão América

Deve fazer uma busca
      Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains            Training Wheels Protocol    5
    Wait Until Page Contains            Mobile Version
    # BOTAO COMECAR
    Wait Until Page Contains Element    class=android.widget.Button
    Click Element                       class=android.widget.Button
    # BOTAO LISTA
    Wait Until Page Contains            BUSCA
    Click Text                          BUSCA 
    Wait Until Page Contains            BUSCA
    Wait Until Page Contains Element    id=io.qaninja.android.twp:id/etSearch
    Input Value                         id=io.qaninja.android.twp:id/etSearch   Thor                         

    Close Application

