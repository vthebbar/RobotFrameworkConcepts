*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}   chrome


*** Test Cases ***
ScrollPage
    open browser    ${url}  ${browser}
    maximize browser window

    # scroll based on given pixel value
    execute javascript  window.scrollTo(0,2400)
    sleep   2

    # scroll till particular element
    scroll element into view   xpath://img[@alt='Flag of India']
    sleep   2

    # scroll till bottm of the page
    execute javascript      window.scrollTo(0, document.body.scrollHeight)
    sleep   2

    # scroll till top of the page
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    sleep  2

    close browser
