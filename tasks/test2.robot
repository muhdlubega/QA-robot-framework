*** Settings ***
Documentation  single test for login
Library  SeleniumLibrary
Resource    ./variables.robot

*** Test Cases ***
login
  Open Browser  https://deriv.com  chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    ${trading_specs_btn}    5
  Wait Until Page Contains Element    ${trade_now_btn}    5
  Click Element    ${trading_specs_btn}
  Sleep    3
  Go Back
  Wait Until Page Contains Element    ${trade_now_btn}    5
  Click Element    ${trade_now_btn}
  Sleep    3

  Close All Browsers
  Open Browser  https://deriv.com/markets/forex  chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    ${cfd_btn}    5
  Wait Until Page Contains Element    ${options_btn}    5
  Wait Until Page Contains Element    ${multipliers_btn}    5
  Click Element    ${options_btn}
  Sleep    3
  Click Element    ${multipliers_btn}
  Sleep    3
  Click Element    ${cfd_btn}
  Sleep    5

