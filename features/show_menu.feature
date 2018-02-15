Feature: let_custemers_see_menu
as a owner.
to be able to let costumers buy food.
You want to display a Menu on a page.

Background:
  Given "Pasta" is in "Menu"
  And "Köttbullar" is in "Menu"

Scenario:
  When the user visits the site
  Then the user should see the "Menu"
  And  the user should see "Starter"
  And  the user should see "Main Course"
  And  the user should see "Desert"
  And user should see the "Pasta"
  And user should see the "Köttbullar"
