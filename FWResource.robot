*** Variables ***

${urlFastwork}  https://staging.fastwork.co
${btnLogin}  //a[@id="login-link"]
${btnSignUp}  //a[@href="/oauth/signup"]
${inpUserName}  //input[@id="signup-request-username"]
${inpFirstName}  //input[@id="signup-request-first_name"]
${inpLastName}  //input[@id="signup-request-last_name"]
${inpEmail}  //input[@id="signup-request-email"]
${inpPassword}  //input[@id="signup-request-password"]
${inpConfPassword}  //input[@id="signup-request-confirm_password"]
${inpPhoneNo}  //input[@id="signup-request-phone_number"]
${chkboxTCConsent}  //input[@id="post-TCConsent"]
${chkboxPPConsent}  //input[@id="post-PPConsent"]
${chkboxMKTConsent}  //input[@id="post-MKTConsent"]
${btnConfirmSignUp}  //button[@class="signup-btn tb-button -fluid _mgt-24px"]
${formConfirmEmail}  //form[@id="verify-account-request-form"]
${btnGoogleSignin}  //a[@href="/auth/google"]
${btnGoogleSignup}  //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-dgl2Hf ksBjEc lKxP2d uRo0Xe TrZEUc lw1w4b"]
${inpGoogleFirstName}  //input[@id="firstName"]
${inpGoogleLastName}  //input[@id="lastName"]
${inpGoogleUserName}  //input[@id="username"]
${inpGooglePassword}  //input[@type="password"]
${inpGoogleConfirmPassword}  //input[@name="ConfirmPasswd"]
${btnNext}  //button[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"]
${inpGooglePhoneNo}  //*[@id="phoneNumberId"]
${inpGoogleSignup}  //input[@type="email"]
${btnConfirmGoogleSignUp}  //button[@class="signup-btn tb-button -fluid _ffml-kanit btn-ff"]
${cookieConsent}  //div[@class="cookie-consent-bar"]
${errorEmailAlreadyExist}  //div[@class="invalid-feedback help-block"]

#testdata for Sign Up With Google Account
${txtUserName}  paritbutqap
${txtFirstName}  parit
${txtLastName}  butqa
${txtEmail}  paritbutqa.p@gmail.com
${txtPassword}  paritbutqa666
${txtPhoneNo}  0947849669



*** Keywords ***

Initialize
    Open Browser  ${urlFastwork}   Chrome

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
    input text  ${inpConfPassword}  ${txtPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
#   click button  ${chkboxMKTConsent}
    click button  ${btnConfirmSignUp}
    Element should be visible  ${formConfirmEmail}
Sign up with email account that had been registered
    click link  ${btnLogin}
    click link  ${btnSignUp}
    input text  ${inpUserName}  ${txtUserName}
    input text  ${inpFirstName}  ${txtFirstName}
    input text  ${inpLastName}  ${txtLastName}
    input text  ${inpEmail}  ${txtEmail}
    input text  ${inpPassword}  ${txtPassword}
    input text  ${inpConfPassword}  ${txtPassword}
    input text  ${inpPhoneNo}  ${txtPhoneNo}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
#   click button  ${chkboxMKTConsent}
    click button  ${btnConfirmSignUp}
    Element should be visible  ${errorEmailAlreadyExist}


Sign Up With Google Account
    click link  ${btnLogin}
    click link  ${btnSignUp}
    click link  ${btnGoogleSignin}
    input text  ${inpGoogleSignup}  ${txtEmail}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${inpGooglePassword}
    input text  ${inpGooglePassword}  ${txtPassword}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${chkboxTCConsent}
    click button  ${chkboxTCConsent}
    click button  ${chkboxPPConsent}
    click button  ${btnConfirmGoogleSignUp}
    Sleep  2s
    Wait Until Element Is Visible  ${cookieConsent}


Sign In With Google Account
    Go to  ${urlFastwork}
    click link  ${btnLogin}
    click link  ${btnGoogleSignin}
    input text  ${inpGoogleSignup}  ${txtEmail}
    click button  ${btnNext}
    Wait Until Element Is Visible  ${inpGooglePassword}
    input text  ${inpGooglePassword}  ${txtPassword}
    click button  ${btnNext}
    Sleep  2s
    Wait Until Element Is Visible  ${cookieConsent}

