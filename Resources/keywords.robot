*** Settings ***
Library                             SeleniumLibrary

*** Keywords ***
Begin web test
    Open Browser                    about:blank  ${BROWSER}

Go to web page
    Load Page
    Verify Page Loaded

Load Page
    Go To                           ${URL}


Verify Page Loaded
      ${link_text} =                Get Text   id:nav-your-amazon
      Should Be Equal               ${link text}  Your Amazon.com

Search for product
    [Arguments]                     ${search_term}
    Enter Search Term               ${search_term}
    Submit Search
    Verify Search Completed         ${search_term}

Enter Search Term
    [Arguments]                     ${search_term}
    Input Text                      id:twotabsearchtextbox  ${search_term}


Submit Search
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    [Arguments]                     ${search_term}
    ${actual_term} =                Get Text  xpath://*{@id="search"}/span/span/h1/div/div[1]/div/div/span[3]
    Should Be Equal                 ${search_term}  ${actual_term}

End webtest
    Close Browser