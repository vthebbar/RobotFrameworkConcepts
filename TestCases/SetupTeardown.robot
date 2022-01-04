*** Settings ***

Suite Setup     log to console      Before test suite
Suite Teardown      log to console   After test suite

Test Setup      log to console      Before Test
Test Teardown   log to console      After Test


*** Test Cases ***
TC1 Login
    log to console  Login Test case

TC2 Register
    log to console      Register test case

TC3 Payment
    log to console      Payment test case
