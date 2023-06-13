*** Variables ***
${deposit_btn}    //*[text()="Deposit"]//parent::button
${traders_hub}    //*[text()="Trader's Hub"]//parent::button

${trading_specs_btn}    //a[@href="/trading-specification/"]
${trade_now_btn}    //button[text()="Trade now"]

${cfd_btn}    //a[@href="/markets/forex/?tab=cfds#cfds"]
${options_btn}    //a[@href="/markets/forex/?tab=options#options"]
${multipliers_btn}    //a[@href="/markets/forex/?tab=multipliers#multipliers"]

${dropdown_btn}    //span[@class="dc-text dc-dropdown__display-text"]
${demo_btn}    //div[@id="demo"]
${real_btn}    //div[@id="real"]
${deriv_trader_btn}    //button[@class="dc-btn dc-btn--primary"]
${acc_info}    //div[@data-testid="dt_acc_info"]
${demo_tab}    //li[@id="dt_core_account-switcher_demo-tab"]
${demo_switch}    //span[@class="acc-switcher__id"]
${contract_dropdown}    //div[@data-testid="dt_contract_dropdown"]
${accumulator_btn}    //div[@id="dt_contract_accumulator_item"]
${two_percent}    //span[@data-value="0.02"]

${reset_balance_btn}    //span[text()="Reset Balance"]
${cq_menu}    //div[@class="cq-symbol-select-btn"]
${1HZ10V}    //span[@class="ic-icon ic-1HZ10V"]
${contract_rise_fall}    //span[@value="rise_fall"]
${5_ticks}    //input[@value="5"]
${10_stake}    //input[@value="10"]
${buy_contract}    //button[@id="dt_purchase_call_button"]
${bought_contract}    //a[@class="dc-result__caption-wrapper"]

${AUD/USD}    //span[@class="ic-frx ic-frxAUDUSD"]
${high_low_btn}    //div[@id="dt_contract_high_low_item"]
${days_input}    //input[@class="dc-input__field"]
${2_days}    //span[@data-duration="2 Days"]
${payout_btn}    //button[@id="dc_payout_toggle_item"]
${payout_add_btn}    //button[@id="dt_amount_input_add"]
${payout_input}    //input[@id="dt_amount_input"]
${contract_lower_disabled}    //button[@class="btn-purchase--disabled"]
${contract_lower}    //button[@id="dt_purchase_put_button"]
${contract_card_red}    //a[@class="dc-contract-card dc-contract-card--red"]
${contract_card_green}    //a[@class="dc-contract-card dc-contract-card--green"]
${barrier_btn}    //input[@id="dt_barrier_1_input"]
${barrier_error}    //span[text()="Contracts more than 24 hours in duration would need an absolute barrier."]

${R_50}    //span[@class="ic-icon ic-R_50"]
${multiplier_btn}    //div[@id="dt_contract_multiplier_item"]
${payout_txt}    //span[text()="Payout"]
${stake_txt}    //span[text()="Stake"]
${stake_input}    //input[@id="dt_amount_input"]
${trade_disabled_btn}    //div[@class="trade-container__fieldset-wrapper trade-container__fieldset-wrapper--disabled"]
${trade_enabled_btn}    //button[@class="btn-purchase btn-purchase--1 btn-purchase--multiplier"]
${multiplier_input}    //div[@data-testid="dt_dropdown_container"]
${multiplier_20}    //div[@id="20"]
${multiplier_40}    //div[@id="40"]
${multiplier_60}    //div[@id="60"]
${multiplier_100}    //div[@id="100"]
${multiplier_200}    //div[@id="200"]
${take_profit}    //input[@name="has_take_profit"]
${stop_loss}    //input[@name="has_stop_loss"]
${deal_cancellation}    //input[@name="has_cancellation"]
${take_profit_btn}    //span[@class="dc-checkbox__box"]//parent::label[@class="dc-checkbox take_profit-checkbox__input"]
${take_profit_value_0}    //input[@id="dc_take_profit_input" and @value="0"]
${take_profit_value_1}    //input[@id="dc_take_profit_input" and @value="1"]
${take_profit_add}    //button[@id="dc_take_profit_input_add"]
${take_profit_sub}    //button[@id="dc_take_profit_input_sub"]
${deal_cancellation_btn}    //span[@class="dc-text dc-checkbox__label"]
${deal_cancellation_input}    //div[@class="dc-dropdown__display dc-dropdown__display--clicked dc-dropdown__display--no-border"]
${cancellation_5}    //div[@id="5m"]
${cancellation_10}    //div[@id="10m"]
${cancellation_15}    //div[@id="15m"]
${cancellation_30}    //div[@id="30m"]
${cancellation_60}    //div[@id="60m"]







${email}    lubega@besquare.com.my
${password}    KiruFlan99!