*** Settings ***
Documentation                       This test suite is designed to test the car rental function at rental15.infotiv.net
Resource                            C:/Users/fritz/PycharmProjects/testing/Resources/keywords.robot
Library                             Seleniumlibrary

Suite Setup     Begin web test
Suite Teardown  End webtest


*** Variables ***
${BROWSER} = chrome
${URL} = http://rental15.infotiv.net


*** Test Cases ***
Tests can fail
    [Documentation]                     This is a failing test
    [Tags]                              Test 1; The failing one

