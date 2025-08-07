*** Settings ***
Resource    ./keyword/import.robot


*** Test Cases ***
Login Success
    SeleniumLibrary.Set Selenium Speed    0.5s
    common.Open Browser    
    login_page.Input Username    ${username}
    login_page.Input Password    ${password}
    login_page.Click Login Button
    login_page.Wait For Login Success
    Sleep    3s
    Close Browser
    # logout_page.Logout User
    # logout_page.Wait For Login Success

Login failed - Password incorrect
    SeleniumLibrary.Set Selenium Speed    0.5s
    common.Open Browser  
    login_page.Input Username    ${username}
    login_page.Input Password    ${password01}
    login_page.Click Login Button
    login_page.Wait For Login - password failed
    Sleep    3s
    Close Browser

Login failed - Username not found
    SeleniumLibrary.Set Selenium Speed    0.5s
    common.Open Browser  
    login_page.Input Username    ${username01}
    login_page.Input Password    ${password01}
    login_page.Click Login Button
    login_page.Wait For Login - username failed
    Sleep    3s
    Close Browser






    


