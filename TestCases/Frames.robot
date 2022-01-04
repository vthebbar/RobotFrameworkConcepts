*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
FrameHandling
    open browser  https://demoqa.com/frames   chrome
    maximize browser window
    select frame    id:frame1    # can use id, name, xpath etc locators
    unselect frame
    select frame    id:frame2
    unselect frame

    close browser





