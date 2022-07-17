*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Open Sehatq
    Open Application    http://localhost:4723/wd/hub   platformName=Android    udid=emulator-5554   deviceName=AndroidEmulator       appPackage=com.she.sehatq     appActivity=com.she.sehatq.view.intro.SplashActivity 
    
*** Test Case ***
Register 
    Open Sehatq
    Sleep   5s
    Click Element    id=com.she.sehatq:id/tvNext
    Sleep   2s
    Click Element   id=com.she.sehatq:id/tv_dismiss
    Sleep   2s
    Click Element   id=com.she.sehatq:id/iv_profile_nav
    Sleep   2s
    Click Element   id=com.she.sehatq:id/tv_signup
    Sleep   2s
    Input Text    id=com.she.sehatq:id/et_input     Anggi Denico
    #Sleep   2s
    Input Text  //android.widget.EditText[@text='Email']    anggi.denico.ad@gmail.com
    Input Text  //android.widget.EditText[@text='Password']    anggi1234__
    Click Element   id=com.she.sehatq:id/cb_terms 
    Sleep   1s  
    Click Element   id=com.she.sehatq:id/btn_signup 
Login
    Open Sehatq
    Sleep   5s
    Wait Until Page Contains Element    id=com.she.sehatq:id/tvNext
    Click Element    id=com.she.sehatq:id/tvNext
    Sleep   2s
    Wait Until Page Contains Element    id=com.she.sehatq:id/tv_dismiss
    Click Element   id=com.she.sehatq:id/tv_dismiss
    Sleep   3s

    Click Element   id=com.she.sehatq:id/iv_profile_nav
    Sleep   2s

    Input Text  id=com.she.sehatq:id/et_input   anggigicoza@gmail.com
    
    Input Text  //android.widget.EditText[@text='Password']   123456abcde
    
    Click Element    //android.widget.Button[@index='2']
    Sleep   2s
    Wait Until Page Contains Element    //android.widget.TextView[@text='Lewati']
    Click Element   //android.widget.TextView[@text='Lewati']

    Click Element   id=com.she.sehatq:id/btn_yes
    Sleep   3s
    Wait Until Page Contains Element    id=com.she.sehatq:id/tvDetailProfile
    Click Element   id=com.she.sehatq:id/tvDetailProfile
    Sleep   2s
    #Scroll Down    id=com.she.sehatq:id/tvDOB
    Click Element   //android.widget.Button[@text='Edit Profil']
    Sleep   2s
    Clear Text  id=com.she.sehatq:id/et_input
    Input Text  id=com.she.sehatq:id/et_input   Anggi D Vareza
    Sleep   4s
    Click Element   id=com.she.sehatq:id/btnSave
    




    
       





