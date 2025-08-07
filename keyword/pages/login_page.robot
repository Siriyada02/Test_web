*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input Username
    [Arguments]    ${username}
    SeleniumLibrary.Input Text    ${login_locator_input-username}    ${username}

Input Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${login_locator_input-pass}    ${password}

Click Login Button
    SeleniumLibrary.Click Button    ${login_locator_Click_btn}

Wait For Login Success
     SeleniumLibrary.Wait Until Element Is Visible    ${login_locator_Success}  

Wait For Login - password failed
     SeleniumLibrary.Wait Until Element Is Visible   ${login_locator_pass_failed}

Wait For Login - username failed
     SeleniumLibrary.Wait Until Element Is Visible  ${login_locator_username_failed}








