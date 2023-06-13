*** Settings ***
Documentation  single test for login
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
switch to deriv trader
  Wait Until Page Contains Element    ${dropdown_btn}    6
  Click Element    ${dropdown_btn}
  Wait Until Page Contains Element    ${demo_btn}
  Wait Until Page Contains Element    ${real_btn}
  Wait Until Page Contains Element    ${deriv_trader_btn}
  Click Button    ${deriv_trader_btn}
  Sleep    3
switch to demo
  Wait Until Page Contains Element    ${acc_info}
  Click Element    ${acc_info}
  Wait Until Page Contains Element    ${demo_tab}
  Click Element    ${demo_tab}
  Wait Until Page Contains Element    ${demo_switch}
  Click Element    ${demo_switch}
click 2% in accumulator
  Wait Until Page Contains Element    ${contract_dropdown}
  Click Element    ${contract_dropdown}
  Wait Until Page Contains Element    ${accumulator_btn}
  Click Element    ${accumulator_btn}
  Wait Until Page Contains Element    ${two_percent}
  Click Element    ${two_percent}
  Sleep    10

  


