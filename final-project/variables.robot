*** Variables ***

${copy_token}    //*[name()='svg' and @data-testid="dt_copy_token_icon"]
${show_token}    //*[name()='svg' and @data-testid="dt_toggle_visibility_icon"]
${delete_token}    //*[name()='svg' and @data-testid="dt_token_delete_icon"]
${cancel_button}    //button[@class="dc-btn dc-btn__effect dc-btn--secondary dc-btn__large dc-dialog__button"]
${delete_button}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]

${read_scope}    //*[@name="read"]//parent::label
${trade_scope}    //*[@name="trade"]//parent::label
${payments_scope}    //*[@name="payments"]//parent::label
${trading_info_scope}    //*[@name="trading_information"]//parent::label
${admin_scope}    //*[@name="admin"]//parent::label
${main_div}    //div[@class="da-api-token__wrapper"]
${token_name}    //input[@name="token_name"]
${zero_error}    //div[text()="Please enter a token name."]
${invalid_length}    12345678901234567890123456789012
${valid_length}    testing
${outside_range_error}    //div[text()="Length of token name must be between 2 and 32 characters." or "Maximum 32 characters"]
${create_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]
# ${create_btn_disabled}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button" and "disabled"]











   



${email}    lubega@besquare.com.my
${password}    KiruFlan99!