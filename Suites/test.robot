*** Settings ***
Resource                ../Resources/Demoblaze_keywords.robot
# Test Setup              Open Browser With Google Chrome
# Test Teardown           Close Google Chrome Browser

*** Test Cases ***
User Should Be Able Open Google Chrome Browser
        Open Browser With Google Chrome

Verify Top Menu
        Verify Top Menu Button

User Should Be Able Login
        Click Login Button In Homepage
        Input Username 
        Input Password
        Click Login Button
# User Should Be Able Logout
#         Click Logout Button