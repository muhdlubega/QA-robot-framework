*** Settings ***
Documentation  buy rise contract
Library  SeleniumLibrary
Resource    ./variables.robot

*** Test Cases ***
login
  Open Browser  https://app.deriv.com  chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    dt_login_button    5
  Click Element    dt_login_button
  Wait Until Page Contains Element    txtEmail    5
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
  Wait Until Page Contains Element    ${reset_balance_btn}    5
  Wait Until Page Contains Element    ${deriv_trader_btn}    5
  Click Element    ${deriv_trader_btn}
  Sleep    10
buy rise contract
  Wait Until Page Contains Element    ${cq_menu}    10
  Wait Until Element Is Visible    ${cq_menu}    10
  Click Element    ${cq_menu}
  Wait Until Page Contains Element    ${1HZ10V}    10
  Wait Until Element Is Visible    ${1HZ10V}    10
  Click Element    ${1HZ10V}
  Wait Until Page Contains Element    ${contract_rise_fall}    10
  Wait Until Page Contains Element    ${5_ticks}    10
  Wait Until Page Contains Element    ${10_stake}    10
  Wait Until Page Contains Element    ${buy_contract}    10
  Wait Until Element Is Visible    ${buy_contract}    10
  Click Element    ${buy_contract}
  Sleep    10
  Wait Until Page Contains Element    ${bought_contract}    10


  


