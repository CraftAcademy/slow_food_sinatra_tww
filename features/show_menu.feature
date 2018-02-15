Feature: let_custemers_see_menu
as a owner.
to be able to let costumers buy food.
You want to display a Menu on a page.


Background:
#Given the one "Menu" exist:
And the following products exist:
      | Name | Catagory | Menu |
      | Pasta | Starter | Menu |
      | Köttbullar | Main Course | Menu |
      | Semla | Desert | Menu |


# Background:
#   Given "Pasta" is a "Starter" on "Menu"
#   And "Köttbullar" is a "Main Course" on "Menu"
#   And "Semla" is a "Desert" on "Menu"

Scenario:
  When the user visits the menu page
  Then the user should see "Menu"
  And  show me the page
  And  the user should see "Starter"
  And  the user should see "Main Course"
  And  the user should see "Desert"
  And  the user should see "Pasta"
  And  the user should see "Köttbullar"
