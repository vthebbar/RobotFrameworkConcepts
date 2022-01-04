*** Settings ***
Library   SeleniumLibrary
Resource   ../Resources/login_resource.robot
Suite Setup    open app
Suite Teardown   close app
Test Template    Invalid Login


*** Test Cases ***
Invalid Login
    [Template]    Invalid Login
     Admin           admin@12
     Admin1          admin@123
     Admin           ${EMPTY}
     ${EMPTY}         admin@123

*** Keywords ***
Invalid Login
    [Arguments]      ${username}     ${password}
    input username   ${username}
    input password   ${password}
    click login button
    Error message should be visible

Valid Login
    [Arguments]     ${username}      ${password}
    input username  ${username}
    input password  ${password}
    click login button
    dashboard page should be visible
