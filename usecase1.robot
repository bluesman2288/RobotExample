Sample Test with Sony Crackle Site
When you look at a report after test execution, you can see that tests have
specified tags associated with them and there are also statistics generated
based on tags. Tags can also be used for many other purposes, one of the most
important being the possibility to select what tests to execute. 
.. code:: robotframework

*** Settings ***
| Library | lib/SampleLibrary.py
*** Variables ***
| ${BROWSER} | chrome
*** Settings ***
| Library | Selenium2Library
| Suite Teardown | Close all browsers
*** Keywords ***
| auticon keyword
| | [Arguments] | ${input}
| | ${string}= | set variable | the string is "${input}"
| | [return] | ${string}
*** Test Cases ***
| Go to Website
| | Open browser | http://sonycrackle.com | ${BROWSER}
| Wait until page is loaded
| | Set Selenium Implicit Wait | 5 seconds
| Start Count 
| | ${currentCount}= | Start Count
| | Log to console | ${currentCount}
| Click TV Link
| | Click Element | //a[contains(text(),'TV')]
| Go Back From TV Link
| | Go Back
| Click MOVIES Link
| | Click Element | //a[contains(text(),'Movies')]
| Clear Count
| | ${currentCount}= | Clear Count
| | Log to console | ${currentCount}
| Restart Count
| | ${currentCount}= | Start Count
| | Log to console | ${currentCount}
| Go Back From Movies Link
| | Go Back
| Click Register
| | Click Element | //a[contains(text(),'Register')]
| Increment Count
| | ${currentCount}= | Start Count
| | Log to console | ${currentCount}
| Custom Keyword
| | ${results}= | auticon keyword | mindsparktest
| | Log to console | ${results}