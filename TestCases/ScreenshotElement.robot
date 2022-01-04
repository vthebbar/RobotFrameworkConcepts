*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
ElementScreenshot
    open browser    https:/google.com   chrome
    maximize browser window
    capture element screenshot  xpath://img[@class='lnXdpd']    C:/Users/user/PycharmProjects/RobotFrameworkProject/Screenshots/logo.png
    close browser