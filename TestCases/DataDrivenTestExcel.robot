*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resource.robot
Library     DataDriver  ../TestData/Testdata.xlsx   sheet_name=Sheet1

Test Template    Invalid Login
Suite Setup     open app
Suite Teardown   close app


*** Test Cases ***
InvalidLoginTestExcel


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}         # These should be similar to excel header
    input username  ${username}
    input password  ${password}
    click login button
    Error message should be visible