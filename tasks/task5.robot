*** Settings ***
Documentation  check multiplier contract parameter
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
check multiplier contract parameter
  Wait Until Page Contains Element    ${cq_menu}    10
  Wait Until Element Is Visible    ${cq_menu}    10
  Click Element    ${cq_menu}
  Wait Until Page Contains Element    ${R_50}    10
  Wait Until Element Is Visible    ${R_50}    10
  Click Element    ${R_50}

  Wait Until Page Contains Element    ${contract_dropdown}    10
  Wait Until Element Is Visible    ${contract_dropdown}    10
  Click Element    ${contract_dropdown}
  Wait Until Page Contains Element    ${multiplier_btn}    10
  Wait Until Element Is Visible    ${multiplier_btn}    10
  Click Element    ${multiplier_btn}

  Wait Until Page Contains Element    ${stake_txt}    10
  Wait Until Element Is Visible    ${stake_txt}    10
  Wait Until Page Does Not Contain Element    ${payout_txt}    10
  Click Element    ${stake_input}
  Press Keys    ${stake_input}    CTRL+A+BACKSPACE
  Input Text    ${stake_input}    2000
  Wait Until Page Contains Element    ${trade_enabled_btn}    10
  Press Keys    ${stake_input}    CTRL+A+BACKSPACE
  Input Text    ${stake_input}    2001
  Wait Until Page Contains Element    ${trade_disabled_btn}    10
  Press Keys    ${stake_input}    CTRL+A+BACKSPACE
  Input Text    ${stake_input}    0.9
  Wait Until Page Contains Element    ${trade_disabled_btn}    10
  Press Keys    ${stake_input}    CTRL+A+BACKSPACE
  Input Text    ${stake_input}    1
  Wait Until Page Contains Element    ${trade_enabled_btn}    10

  Wait Until Page Contains Element    ${multiplier_input}    10
  Wait Until Element Is Visible    ${multiplier_input}    10
  Click Element    ${multiplier_input}
  Wait Until Page Contains Element    ${multiplier_20}    10
  Wait Until Page Contains Element    ${multiplier_40}    10
  Wait Until Page Contains Element    ${multiplier_60}    10
  Wait Until Page Contains Element    ${multiplier_100}    10
  Wait Until Page Contains Element    ${multiplier_200}    10

  Wait Until Page Contains Element    ${take_profit}    10
  Wait Until Page Contains Element    ${stop_loss}    10
  Wait Until Page Contains Element    ${deal_cancellation}    10
  Wait Until Page Contains Element    ${take_profit_btn}    10
  Wait Until Element Is Visible   ${take_profit_btn}    10
  Click Element    ${take_profit_btn}
  Wait Until Page Contains Element    ${take_profit_add}    10
  Wait Until Element Is Visible   ${take_profit_add}    10
  Click Element    ${take_profit_add}
  Wait Until Element Is Visible   ${take_profit_value_1}    10
  Wait Until Page Contains Element    ${take_profit_sub}    10
  Wait Until Element Is Visible   ${take_profit_sub}    10
  Click Element    ${take_profit_sub}
  Wait Until Element Is Visible   ${take_profit_value_0}    10

  Wait Until Page Contains Element    ${deal_cancellation_btn}    10
  Wait Until Element Is Visible   ${deal_cancellation_btn}    10
  Click Element    ${deal_cancellation_btn}
  Wait Until Page Contains Element    ${deal_cancellation_input}    10
  Wait Until Element Is Visible   ${deal_cancellation_input}    10
  Click Element    ${deal_cancellation_input}
  Wait Until Page Contains Element    ${cancellation_5}    10
  Wait Until Page Contains Element    ${cancellation_10}    10
  Wait Until Page Contains Element    ${cancellation_15}    10
  Wait Until Page Contains Element    ${cancellation_30}    10
  Wait Until Page Contains Element    ${cancellation_60}    10
  Sleep    10

  


