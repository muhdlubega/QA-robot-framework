*** Settings ***
Documentation  check relative barrier error
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
check relative barrier error
  Wait Until Page Contains Element    ${cq_menu}    10
  Wait Until Element Is Visible    ${cq_menu}    10
  Click Element    ${cq_menu}
  Wait Until Page Contains Element    ${AUD/USD}    10
  Wait Until Element Is Visible    ${AUD/USD}    10
  Click Element    ${AUD/USD}
  Wait Until Page Contains Element    ${contract_dropdown}    10
  Wait Until Element Is Visible    ${contract_dropdown}    10
  Click Element    ${contract_dropdown}
  Wait Until Page Contains Element    ${high_low_btn}    10
  Wait Until Element Is Visible    ${high_low_btn}    10
  Click Element    ${high_low_btn}
  Wait Until Page Contains Element    ${days_input}    10
  Click Element    ${days_input}
  Wait Until Page Contains Element    ${2_days}    10
  Click Element    ${2_days}
  Wait Until Page Contains Element    ${barrier_btn}    10
  Click Element    ${barrier_btn}
  Press Keys    ${barrier_btn}    CTRL+A+BACKSPACE
  Input Text    ${barrier_btn}    -0.5
  Wait Until Page Contains Element    ${payout_btn}    10
  Click Element    ${payout_btn}
  Wait Until Page Contains Element    ${payout_input}    10
  Wait Until Page Contains Element    ${barrier_error}    10
  Sleep    10

  


