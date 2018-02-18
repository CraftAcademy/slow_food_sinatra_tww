Feature: User can login
  as a User
  in order to be able to order products
  there needs to be a login.

  Scenario: User logs into their account
    Given User has an account
    Given User visits "/login"
    When User clicks on the "Login" button
    And He fills in "name" with "Holger"
    And He fills in "password" with "password1"
    And He clicks "submit"
    And He sees message "Login successful"

  Scenario: User is unsuccessful in logging in
    Given User has an account
    Given User visits "/login"
    When User clicks on the "Login" button
    And He fills in "name" with "Holger"
    And He fills in "password" with "hello"
    And He clicks "submit"
    And He sees message 'The username and password combination does not match'
