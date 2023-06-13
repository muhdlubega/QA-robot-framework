*** Settings ***
Documentation  buy lower contract
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
buy lower contract
  Wait Until Page Contains Element    ${cq_menu}    60
  Wait Until Element Is Visible    ${cq_menu}    60
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
  Wait Until Page Contains Element    ${payout_btn}    10
  Click Element    ${payout_btn}
  Wait Until Page Contains Element    ${payout_input}    10
  Click Element    ${payout_input}
  Press Keys    ${payout_input}    CTRL+A+BACKSPACE
  Input Text    ${payout_input}    15.50
  ${check_disabled} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${contract_lower_disabled}    10
  IF    (${check_disabled})
      Wait Until Page Contains Element    ${contract_lower}    10
      Wait Until Element Is Visible    ${contract_lower}    10
      Click Element    ${contract_lower}
  ELSE
      Click Element    ${contract_lower}  
  END
  Wait Until Page Contains Element    ${contract_card_red}    10
  Sleep    5

  


