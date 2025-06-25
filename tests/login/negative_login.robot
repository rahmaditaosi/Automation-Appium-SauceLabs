*** Settings ***
Library           AppiumLibrary
Resource          ../../resources/variables.robot

*** Test Cases ***
Login With Invalid Credentials
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appWaitActivity=*.*
    
    #Login
    Wait Until Element Is Visible    accessibility_id=test-Username    10s
    Input Text    accessibility_id=test-Username    wrong_user
    Input Text    accessibility_id=test-Password    wrong_pass
    Click Element    accessibility_id=test-LOGIN

    #Verify Error Message  
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Username and password do not match any user in this service.']    5s
    Close Application


Login With Blank Username
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appWaitActivity=*.*

    # Login Page
    Wait Until Element Is Visible    accessibility_id=test-Password    10s
    Input Text    accessibility_id=test-Password    secret_sauce
    Click Element    accessibility_id=test-LOGIN

    #Verify Error Message
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Username is required']    5s
    Close Application


Login With Blank Password
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appWaitActivity=*.*

    # Login Page
    Wait Until Element Is Visible    accessibility_id=test-Username    10s
    Input Text    accessibility_id=test-Username    standard_user
    Click Element    accessibility_id=test-LOGIN

    #Verify Error Message
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Password is required']    5s
    Close Application


Login With Empty Username And Password
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appWaitActivity=*.*

    # Login Page
    Wait Until Element Is Visible    accessibility_id=test-LOGIN    10s
    Click Element    accessibility_id=test-LOGIN

    #Verify Error Message
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Username is required']    5s
    Close Application
