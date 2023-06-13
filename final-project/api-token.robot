*** Settings ***
Documentation  Automation on API Token page
Library  SeleniumLibrary
Resource    ./variables.robot

*** Test Cases ***
Check accessibility of API Token page
  Open Browser  https://app.deriv.com/account/api-token    chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    txtEmail    5
  Input Text    txtEmail    ${email}
  Input Password    password    ${password}
  Click Button    login
Creating API Token
  Wait Until Page Contains Element    ${read_scope}    10
  Click Element    ${read_scope}
  Wait Until Page Contains Element    ${trade_scope}    10
  Click Element    ${trade_scope}
  Wait Until Page Contains Element    ${payments_scope}    10
  Click Element    ${payments_scope}
  Wait Until Page Contains Element    ${trading_info_scope}    10
  Click Element    ${trading_info_scope}
  Wait Until Page Contains Element    ${admin_scope}    10
  Click Element    ${admin_scope}
  Wait Until Page Contains Element    ${token_name}    10
  Click Element    ${token_name}
  Click Element    ${main_div}
  Wait Until Element Is Visible    ${zero_error}    10
  Click Element    ${token_name}
  Press Keys    ${token_name}    A
  Wait Until Element Is Visible    ${outside_range_error}    10
  Input Text    ${token_name}    ${invalid_length}
  Wait Until Element Is Visible    ${outside_range_error}    10
  Press Keys    ${token_name}    CTRL+A+BACKSPACE
  Input Text    ${token_name}    ${valid_length}
  Wait Until Page Contains Element    ${create_btn}    10
  Click Element    ${create_btn}
Check interactive elements of API Token page
  Wait Until Element Is Visible    ${copy_token}    10
  Click Element    ${copy_token}
  Wait Until Element Is Visible    ${show_token}    10
  Click Element    ${show_token}
  Wait Until Element Is Visible    ${delete_token}    10
  Click Element    ${delete_token}
  Wait Until Element Is Visible    ${cancel_button}    10
  Click Element    ${cancel_button}
  Wait Until Element Is Visible    ${delete_token}    10
  Click Element    ${delete_token}
  Wait Until Element Is Visible    ${delete_button}    10
  Click Element    ${delete_button}
  Sleep    5