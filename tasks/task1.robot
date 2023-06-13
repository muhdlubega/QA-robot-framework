*** Settings ***
Documentation  switch to virtual account
Library  SeleniumLibrary
Resource    ./variables.robot

*** Test Cases ***
login
  Open Browser  https://app.deriv.com  chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    dt_login_button    6
  Click Element    dt_login_button
  Wait Until Page Contains Element    txtEmail    6
  Input Text    txtEmail    ${email}
  Input Password    password    ${password}
  Click Button    login
switch to demo
  Wait Until Page Contains Element    ${dropdown_btn}    10
  Wait Until Element Is Visible    ${dropdown_btn}    10
  Click Element    ${dropdown_btn}
  Wait Until Page Contains Element    ${demo_btn}    10
  Wait Until Element Is Visible    ${demo_btn}    10
  Wait Until Page Contains Element    ${real_btn}    10
  Click Element    ${demo_btn}
  Wait Until Page Contains Element    ${reset_balance_btn}
  Sleep    10

  


