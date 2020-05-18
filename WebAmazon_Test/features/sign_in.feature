Feature: sign_in

Scenario: sign in failed
    Given open the website
    And user open form sign in 
    When user enter invalid email or phone or mobile accounts
    Then user should continue login

Scenario: sign in success
    Given open the website1
    And user open form sign in1
    When user enter valid email or phone or mobile accounts
    Then user should continue login1