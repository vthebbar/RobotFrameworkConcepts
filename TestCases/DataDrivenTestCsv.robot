*** Settings ***
Library  SeleniumLibrary
Library   DataDriver   ../TestData/Testdata.csv
Resource    ../Resources/login_resource.robot
Suite Setup     open app
Suite Teardown   close app
Test Template   Invalid Login

*** Test Cases ***
Invalidlogintestcsv



*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}         # This should be same as csv file header
    input username  ${username}
    input password  ${password}
    click login button
    Error message should be visible