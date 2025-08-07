*** Settings ***
Library    SeleniumLibrary

Variables    ../setting/url.yaml
Variables    ../testdata/testdata.yaml

Resource    ../keyword/common.robot

Resource    ../keyword/locator/login_locator.robot
Resource    ../keyword/locator/logout_locator.robot

Resource    ../keyword/pages/login_page.robot
Resource    ../keyword/pages/logout_page.robot