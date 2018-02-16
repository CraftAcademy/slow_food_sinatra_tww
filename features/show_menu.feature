Feature: show_menu
  As a Customer.
  In order to know what food is available.
  The menu must be displayed on a page.

  Background:
    And the following products exist:
      | name       | catagory    | menu |
      | Pasta      | Starter     | Menu |
      | Köttbullar | Main Course | Menu |
      | Semla      | Dessert     | Menu |

  Scenario: The user sees a menu
    When the user visits the menu page
    Then the user should see "Menu"
    And the user should see "Starter"
    And the user should see "Main Course"
    And the user should see "Dessert"
    And the user should see "Pasta"
    And the user should see "Köttbullar"
