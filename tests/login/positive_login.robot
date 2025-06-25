*** Settings ***
Library           AppiumLibrary
Resource          ../../resources/variables.robot

*** Test Cases ***
Login With Valid Credentials
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appWaitActivity=*.*

# Login Page
    Wait Until Element Is Visible    accessibility_id=test-Username    10s
    Input Text    accessibility_id=test-Username    standard_user
    Input Text    accessibility_id=test-Password    secret_sauce
    Click Element    accessibility_id=test-LOGIN
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="PRODUCTS"]    10s
    Close Application