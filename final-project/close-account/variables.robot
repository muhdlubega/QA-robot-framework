*** Variables ***

${cancel_btn}    //button[@class="dc-btn dc-btn--secondary dc-btn__large closing-account__button--cancel"]
${close_btn}    //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${policy_btn}    //a[@href="https://deriv.com/tnc/security-and-privacy.pdf"]
${reason1}    //input[@name="financial-priorities"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason2}    //input[@name="stop-trading"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason3}    //input[@name="not-interested"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason4}    //input[@name="another-website"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason5}    //input[@name="not-user-friendly"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason6}    //input[@name="difficult-transactions"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason7}    //input[@name="lack-of-features"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason8}    //input[@name="unsatisfactory-service"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason9}    //input[@name="other-reasons"]//following-sibling::span[@class="dc-text dc-checkbox__label"]
${reason_error}    //p[text()="Please select at least one reason"]
${textarea1}    //textarea[@name="other_trading_platforms"]
${textarea2}    //textarea[@name="do_to_improve"]
${110_chars}    p5BcrACaHpvWn2p031WAHYvW0epO89EPpaNOXjOeNMg5F7CP6JHoJBwLNyAZBCroDlM8QL3lkSW6CLg2QjXwGFHdYzIwhBNXUBygXtWlpqK0bZ
${55_chars}    qFynuDu3nBIl5LcSQ3YFMboeZzsTawaj8yVbuoGOZpW29BrqBUb01wG
${chars_error}    //p[text()="Remaining characters: 0"]
${back_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--secondary dc-btn__large"]
${continue_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${go_back_btn}    //span[text()="Go Back"]//parent::button[@class="dc-btn dc-btn__effect dc-btn--secondary dc-btn__large"]
${close_acc_btn}    //span[text()="Close account"]//parent::button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${login_btn}    //button[@id="dm-nav-login-button"]
${login_disabled}    //button[@class="button primary outlined text-small typography-weight-bold" and "disabled"]
${reactivate_btn}    //button[@name="confirm_reactivate"]


























${email}    
${password}    