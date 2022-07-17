*** Settings ***
Library     Selenium2Library

*** Variables ***
${Browser}  chrome 
${url1}  https://www.sehatq.com/daftar/email 



*** Test Cases***
RegisterEmail
    Open Browser  ${url1}    ${Browser}
    Maximize Browser Window
    Sleep   3s
    
    Execute Javascript  window.scrollTo(0,160)
    ${"Name"}   Set Variable    id=name

    Element Should Be Visible   ${"Name"}
    Element Should Be Enabled   ${"Name"}

    Input Text  ${"Name"}   Anggi Denico V
    

    ${"Email"}   Set Variable    id=email

    Element Should Be Visible   ${"Email"}
    Element Should Be Enabled   ${"Email"}

    Input Text  ${"Email"}   anggidenicov@gmail.com
    

    ${"Password"}   Set Variable    name=password

    Element Should Be Visible   ${"Password"}
    Element Should Be Enabled   ${"Password"}

    Input Text  ${"Password"}   123456abcde
    Sleep   2s
    Execute Javascript  window.scrollTo(120,360)
    Sleep   2s
     
    ${"submit"}   Set Variable    xpath://button[@type='submit']

    Element Should Be Visible   ${"submit"}
    Element Should Be Enabled   ${"submit"}

    Click Button    ${"submit"}
    Capture Page Screenshot
    Close Browser

LoginEmail

    Open Browser      https://www.sehatq.com/login/email   chrome 
    Maximize Browser Window
    Sleep   3s
    Execute Javascript  window.scrollTo(0,100)
    ${"email"}   Set Variable    id=email

    Element Should Be Visible   ${"email"}
    Element Should Be Enabled   ${"email"}

    Input Text  ${"email"}   anggigicoza@gmail.com
    Sleep   2s
    ${"Password"}   Set Variable    name=password

    Element Should Be Visible   ${"Password"}
    Element Should Be Enabled   ${"Password"}

    Input Text  ${"Password"}   123456abcde
    Sleep   2s

    ${"submit"}   Set Variable    xpath://button[@type='submit']

    Element Should Be Visible   ${"submit"}
    Element Should Be Enabled   ${"submit"}

    Click Button    ${"submit"}
    Close All Browsers
    Capture Page Screenshot

EditProfil
    Open Browser      https://www.sehatq.com/login/email    chrome 
    Maximize Browser Window
    Sleep   3s
    Execute Javascript  window.scrollTo(0,100)
    ${"email"}   Set Variable    id=email

    Element Should Be Visible   ${"email"}
    Element Should Be Enabled   ${"email"}

    Input Text  ${"email"}   anggigicoza@gmail.com
    Sleep   2s
    ${"Password"}   Set Variable    name=password

    Element Should Be Visible   ${"Password"}
    Element Should Be Enabled   ${"Password"}

    Input Text  ${"Password"}   123456abcde
    Sleep   2s

    ${"submit"}   Set Variable    xpath://button[@type='submit']

    Element Should Be Visible   ${"submit"}
    Element Should Be Enabled   ${"submit"}

    Click Button    ${"submit"}
    Sleep   2s
    
    
    ${"profil"}   Set Variable     //*[@id="popover-profile"]/div[1]

    Wait Until Element Is Visible  ${"profil"} 

    Click Element   ${"profil"}
    Sleep   2s
    
    ${"profil1"}   Set Variable     //*[@id="popover-profile"]/div[2]/div/a[1]

    Element Should Be Visible   ${"profil"}
    Element Should Be Enabled   ${"profil"}

    Click Element   ${"profil1"}
    

    ${"edit"}   Set Variable    //*[@id="__next"]/div[2]/div[2]/div[2]/div[2]/a

    Wait Until Element Is Visible   ${"edit"}
    
    Click Link  ${"edit"}  
    Sleep   2s

    ${"clearname"}   Set Variable    name=name

    Wait Until Element Is Visible   ${"clearname"}
    Clear Element Text  ${"clearname"}   
    Sleep   2s
    
    ${"EditName"}   Set Variable    name=name

    Element Should Be Visible   ${"EditName"}
    Element Should Be Enabled   ${"EditName"}

    Input Text  ${"EditName"}   Anggi Denico
    

    ${"date"}   Set Variable    //*[@id="__next"]/div[1]/div/div/div[2]/div[2]/div[2]/div/div/div[1]/div[2]/div/div[1]/label/div/button
    Element Should Be Visible   ${"date"}
    Element Should Be Enabled   ${"date"}

    Click Button  ${"date"}   
    

    ${"Year"}   Set Variable    name=year
       
    Element Should Be Visible   ${"Year"}
    Element Should Be Enabled   ${"Year"}

    Select From List By Value  ${"Year"}   1995
    #Sleep   2s

    ${"month"}   Set Variable    name=month

    Wait Until Element Is Visible   ${"month"}
    

    Select From List By Value  ${"month"}   5
    #Sleep   2s
    ${"pickdate"}   Set Variable    //*[@id="__next"]/div[1]/div/div/div[2]/div[2]/div[2]/div/div/div[1]/div[2]/div/div[2]/div/div/div/div/div[2]/div/div[3]/div[5]/div[1]

    Element Should Be Visible   ${"pickdate"}
    Element Should Be Enabled   ${"pickdate"}

    Click Element  ${"pickdate"}   
    

    ${"pickgender"}   Set Variable    //*[@id="gender"]/div/button


    Element Should Be Visible   ${"pickgender"}
    Element Should Be Enabled   ${"pickgender"}

    Click Button  ${"pickgender"}   
    Sleep   2s

    ${"gender"}   Set Variable    //*[@id="gender"]/div[2]/div/div/a[1]


    Element Should Be Visible   ${"gender"}
    Element Should Be Enabled   ${"gender"}

    Click Element  ${"gender"}   
    Sleep   2s

    ${"height"}   Set Variable    name=height

    Element Should Be Visible   ${"height"}
    Element Should Be Enabled   ${"height"}

    Input Text  ${"height"}   168
    Sleep   2s

    ${"weight"}   Set Variable    name=weight

    Element Should Be Visible   ${"weight"}
    Element Should Be Enabled   ${"weight"}

    Input Text  ${"weight"}   64
    Sleep   2s

    Execute Javascript  window.scrollTo(0,400)
    ${"address"}   Set Variable    id=address

    Element Should Be Visible   ${"address"}
    Element Should Be Enabled   ${"address"}

    Input Text  ${"address"}   Jakarta,Indonesia
    Sleep   2s

    Execute Javascript  window.scrollTo(400,600)

    ${"simpan"}   Set Variable    //*[@id="__next"]/div[1]/div/div/div[2]/div[2]/div[2]/div/div/div[3]/button

    Element Should Be Visible   ${"simpan"}
    Element Should Be Enabled   ${"simpan"}

    Click Button  ${"simpan"}   
    Sleep   2s
    Capture Page Screenshot

