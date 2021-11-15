*** Variables ***
${btnLogin}  //a[@id="login-link"]
${btnSignUp}  //a[@href="/oauth/signup"]
${inpUserName}  //input[@id="signup-request-username"]
${txtUserName}  paritbutqap
${inpFirstName}  //input[@id="signup-request-first_name"]
${txtFirstName}  parit
${inpLastName}  //input[@id="signup-request-last_name"]
${txtLastName}  butqa
${inpEmail}  //input[@id="signup-request-email"]
${txtEmail}  paritbutqa.p@gmail.com
${inpPassword}  //input[@id="signup-request-password"]
${txtPassword}  paritbutqa.666
${inpConfPassword}  //input[@id="signup-request-confirm_password"]
${txtConfPassword}  paritbutqa.666
${inpPhoneNo}  //input[@id="signup-request-phone_number"]
${txtPhoneNo}  0947849669
${chkboxTCConsent}  //input[@id="post-TCConsent"]
${chkboxPPConsent}  //input[@id="post-PPConsent"]
${chkboxMKTConsent}  //input[@id="post-MKTConsent"]
${btmConfirmSignUp}  //button[@class="signup-btn tb-button -fluid _mgt-24px"]
${formConfirmEmail}  //form[@id="verify-account-request-form"]

*** Keywords ***
Initialize
    Open Browser  https://staging.fastwork.co   Chrome

CloseDown
    Close Browser

Sign Up With Email Account
    click link  ${btnLogin}
    click link  ${btnSignUp}
    input text  ${inpUserName}  ${txtUserName}
    input text  ${inpFirstName}  ${txtFirstName}
    input text  ${inpLastName}  ${txtLastName}
    input text  ${inpEmail}  ${txtEmail}
    input text  ${inpPassword}  ${txtPassword}
    input text  ${inpConfPassword}  ${txtConfPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
    click button  ${chkboxMKTConsent}
    click button  ${btmConfirmSignUp}
    Element should be visible  ${formConfirmEmail}

#Sign Up WIth Google Account
