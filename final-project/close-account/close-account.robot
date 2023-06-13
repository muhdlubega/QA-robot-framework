*** Settings ***
Documentation  Automation on account closing
Library  SeleniumLibrary
Resource    ./variables.robot

*** Test Cases ***
Check accessibility of API Token page
  Open Browser    https://app.deriv.com/account/closing-account    chrome
  Set Window Size    1280    1024
  Wait Until Page Contains Element    txtEmail    5
  Input Text    txtEmail    ${email}
  Input Password    password    ${password}
  Click Button    login
Check interactive elements of Close account page
  Wait Until Page Contains Element    ${cancel_btn}    10
  Wait Until Element Is Visible    ${cancel_btn}    10
  Click Element    ${cancel_btn}
  Go Back
  Wait Until Page Contains Element    ${policy_btn}    10
  Wait Until Element Is Visible    ${policy_btn}    10
  Click Element    ${policy_btn}
  ${title_var}        Get Window Titles
  Wait Until Page Contains Element    ${close_btn}    10
  Wait Until Element Is Visible    ${close_btn}    10
  Click Element    ${close_btn}
Closing account
  Wait Until Page Contains Element    ${back_btn}    10
  Wait Until Element Is Visible    ${back_btn}    10
  Click Element    ${back_btn}
  Wait Until Page Contains Element    ${close_btn}    10
  Wait Until Element Is Visible    ${close_btn}    10
  Click Element    ${close_btn}
  Wait Until Page Contains Element    ${reason1}    10
  Click Element    ${reason1}
  Wait Until Page Contains Element    ${reason2}    10
  Click Element    ${reason2}
  Wait Until Page Contains Element    ${reason3}    10
  Click Element    ${reason3}
  Click Element    ${reason3}
  Click Element    ${reason2}
  Click Element    ${reason1}
  Wait Until Element Is Visible    ${reason_error}
  Wait Until Page Contains Element    ${reason4}    10
  Click Element    ${reason4}
  Wait Until Page Contains Element    ${reason5}    10
  Click Element    ${reason5}
  Wait Until Page Contains Element    ${reason6}    10
  Click Element    ${reason6}
  Click Element    ${reason6}
  Click Element    ${reason5}
  Click Element    ${reason4}
  Wait Until Page Contains Element    ${reason7}    10
  Click Element    ${reason7}
  Wait Until Page Contains Element    ${reason8}    10
  Click Element    ${reason8}
  Wait Until Page Contains Element    ${reason9}    10
  Click Element    ${reason9}
  Click Element    ${reason9}
  Click Element    ${reason8}
  Click Element    ${reason7}
  Click Element    ${reason1}
  Wait Until Page Contains Element    ${textarea1}    10
  Click Element    ${textarea1}
  Input Text    ${textarea1}    ${110_chars}
  Wait Until Element Is Visible    ${chars_error}    10
  Press Keys    ${textarea1}    CTRL+A+BACKSPACE
  Input Text    ${textarea1}    ${55_chars}
  Wait Until Page Contains Element    ${textarea2}    10
  Click Element    ${textarea2}
  Input Text    ${textarea2}    ${55_chars}
  Wait Until Element Is Visible    ${chars_error}    10
  Press Keys    ${textarea1}    CTRL+A+BACKSPACE
  Press Keys    ${textarea2}    CTRL+A+BACKSPACE
  Input Text    ${textarea2}    ${110_chars}
  Wait Until Element Is Visible    ${chars_error}    10
  Wait Until Page Contains Element    ${continue_btn}    10
  Click Element    ${continue_btn}
  Wait Until Page Contains Element    ${go_back_btn}    10
  Click Element    ${go_back_btn}
  Wait Until Page Contains Element    ${continue_btn}    10
  Click Element    ${continue_btn}
  Wait Until Page Contains Element    ${close_acc_btn}    10
  Wait Until Element Is Visible    ${close_acc_btn}    10
  Click Element    ${close_acc_btn}
Reactivating Account
  Sleep    15
  ${check_disabled} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${login_disabled}    10
  IF    (${check_disabled})
      Wait Until Page Contains Element    ${login_btn}    10
      Wait Until Element Is Visible    ${login_btn}    10
      Click Element    ${login_btn}
  ELSE
      Click Element    ${login_btn}  
  END
  Wait Until Page Contains Element    txtEmail    5
  Input Text    txtEmail    ${email}
  Input Password    password    ${password}
  Click Button    login
  Wait Until Page Contains Element    ${reactivate_btn}    10
  Wait Until Element Is Visible    ${reactivate_btn}    10
  Click Element    ${reactivate_btn}
  Sleep    5