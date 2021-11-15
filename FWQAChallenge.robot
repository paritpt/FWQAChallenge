*** Settings ***
Library   SeleniumLibrary
Resource  FWResource.robot
Suite Setup  Initialize
#Suite Teardown  CloseDown



*** Test Cases ***
Testcase1-Register_Fastwork
    Sign Up With Email Account



