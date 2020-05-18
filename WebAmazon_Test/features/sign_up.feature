Feature: sign_up

Scenario: sign up failed
    Given user open the website
    And user open form sign up 
    When user fill in form sign up with invalid data
    Then user should submit data

Scenario: sign up success
    Given user open the website1
    Given user open form sign up1
    When user fill in form sign up with valid data
    Then user should submit data1