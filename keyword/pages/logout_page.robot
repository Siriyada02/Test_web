*** Settings ***
Resource    ../import.robot

*** Keywords ***
Logout User
    Wait Until Element Is Visible    ${logout_ator_Click_btn}    0.5s
    Click Element    ${logout_ator_Click_btn}

Wait For Login Success
    SeleniumLibrary.Wait Until Element Is Visible    ${loguot_locator_sucess} 