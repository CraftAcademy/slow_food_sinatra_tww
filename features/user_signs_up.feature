Feature: User can sign up
  as a User
  to be able to order products
  there need to be a create account function

  Scenario: User creates an account
    Given User visits the site
    When User clicks on the "Sign up" button
    Then He should be redirected to "/signup"
    And He fills in "name" with "Holger"
    And He fills in a "password" with "password1"
    And He fills in a "password_confirmation" with "password1"
    And He clicks "submit"
    And He sees message "signup successful"
    And He should be on "main page"
