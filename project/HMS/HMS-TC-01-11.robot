*** Settings ***
Library           SeleniumLibrary
Resource    ../keyword.txt
Test Setup    Login
Test Teardown    Close Browser

*** Test Cases ***
HMS-TC-01 Create body observation
    Wait And Click    xpath://*[contains(@class, 'nav-item')]//*[text()='身體檢測']
    Wait And Click    xpath://*[text()='新增']
    Wait And Click    xpath://*[contains(@class, 'mat-select-arrow-wrapper')]//*[contains(@class, 'mat-select-arrow')]
    Wait And Click    xpath://*[contains(@id, 'mat-option-0')]
    Wait And Click    xpath://*[contains(@class, 'mat-form-field-infix')]//*[contains(@ng-reflect-placeholder, 'Value')]
    Wait And Input    xpath://*[contains(@class, 'mat-form-field-infix')]//*[contains(@ng-reflect-placeholder, 'Value')]    50
    Wait And Click Button    xpath://button[contains(@class, 'mat-button mat-button-base ng-star-inserted')]
    Wait Until Element Is Visible    xpath://td[text()=' 50 ']

HMS-TC-02 Edit
    Wait And Click    xpath://*[contains(@class, 'nav-item')]//*[text()='身體檢測']
    Wait And Click    xpath://div[contains(@class, 'mat-radio-outer-circle')]
    Wait And Click    xpath://*[text()='修改']
    Wait And Click    xpath://*[contains(@class, 'mat-form-field-infix')]//*[contains(@ng-reflect-placeholder, 'Value')]
    Wait And Input    xpath://*[contains(@class, 'mat-form-field-infix')]//*[contains(@ng-reflect-placeholder, 'Value')]    55
    Wait And Click Button    xpath://button[contains(@class, 'mat-button mat-button-base ng-star-inserted')]
    Wait Until Element Is Visible    xpath://td[text()=' 55 ']

HMS-TC-05 Delete
    Wait And Click    xpath://*[contains(@class, 'nav-item')]//*[text()='身體檢測']
    Wait And Click    xpath://div[contains(@class, 'mat-radio-outer-circle')]
    Wait And Click    xpath://*[text()='刪除']
    Sleep    2s

