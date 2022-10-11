*** Settings ***
Library     SeleniumLibrary
Variables   ../Resources/Demoblaze_locators.yaml

*** Variables ***

${DEMOBLAZE_URL}        https://www.demoblaze.com/index.html
${CHROME_BROWSER}       googlechrome

*** Keywords ***
Open Browser With Google Chrome
        Open Browser    url=${DEMOBLAZE_URL}    browser=${CHROME_BROWSER}
        Maximize Browser Window

Verify Top Menu Button
        Element Should Be Visible       ${Home}

Click Login Button In Homepage
        Wait Until Element Is Visible  ${LoginButton}
        Click Element                  ${LoginButton}

Input Username
        Wait Until Element Is Visible   ${FieldUsername}
        Input Text                      ${FieldUsername}          text=test4567

Input Password
        Wait Until Element Is Visible   ${FieldPassword}
        Input Text                      ${FieldPassword}          text=test
Click Login Button
        Click Element                   ${ButtonLogin} 
Click Logout Button
        Wait Until Element Is Visible   ${ButtonLogout}
        Click Element                   ${ButtonLogout}
Close Google Chrome Browser
        Close Browser
