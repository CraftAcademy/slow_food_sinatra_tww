Feature: User can sign up
  as a User
  to be able to order products
  there need to be a create account function

  Scenario: User creates an account
    Given User visits the site
    When User clicks on the "Sign up" button
    Then He should be redirected to "/auth/create"
    And He fills in "name" with "Holger"
    And He fills in "password" with "password1"
    And He fills in "password_confirmation" with "password1"
    And He clicks "submit"
    And He sees message "Signup successful for Holger"

  # Scenario: User has passwords that don't match
  #   Given User visits the site
  #   When User clicks on the "Sign up" button
  #   Then He should be redirected to "/signup"
  #   And He fills in "name" with "Holger"
  #   And He fills in "password" with "password1"
  #   And He fills in "password_confirmation" with "pass"
  #   And He clicks "submit"
  #   And He sees message "Passwords must match"
  #
  # Scenario: User did not enter all fields
  #   Given User visits the site
  #   When User clicks on the "Sign up" button
  #   Then He should be redirected to "/signup"
  #   And He fills in "password" with "password1"
  #   And He fills in "password_confirmation" with "password1"
  #   And He clicks "submit"
  #   And He sees message "Please enter all fields"
  #
  # Scenario: User did not enter both password fields
  #   Given User visits the site
  #   When User clicks on the "Sign up" button
  #   Then He should be redirected to "/signup"
  #   And He fills in "name" with "Holger"
  #   And He fills in "password_confirmation" with "password1"
  #   And He clicks "submit"
  #   And He sees message "Passwords must match"
