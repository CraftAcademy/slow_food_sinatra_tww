Feature: let_custemers_see_menu
as a owner.
to be able to let costumers buy food.
You want to display a Menu on a page.

Background:
  Given "Pasta" is in "Menu"
  And "Köttbullar" is in "Menu"
  And "Starter" is in "Menu"
  And "Main Course" is in "Menu"
  And "Desert" is in "Menu"

Scenario:
  When the user visits the menu page
  Then the user should see "Menu"
  And  show me the page
  And  the user should see "Starter"
  And  the user should see "Main Course"
  And  the user should see "Desert"
  And  the user should see "Pasta"
  And  the user should see "Köttbullar"
