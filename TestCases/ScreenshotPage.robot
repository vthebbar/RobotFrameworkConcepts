*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
PageScreenshot
    open browser    https://bing.com      chrome
    maximize browser window
    capture page screenshot    C:/Users/user/PycharmProjects/RobotFrameworkProject/Screenshots/page.png
    close browser
