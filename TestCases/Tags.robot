*** Settings ***


*** Test Cases ***

TC1 Register
    [Tags]   sanity
    log to console   register test case

TC2 Login
    [Tags]  sanity
    log to console  login test case

TC3 payment
    [Tags]  functional
    log to console  payment test case

TC4 Tansfer
    [Tags]  functional   regression
    log to console  Transfer test case
