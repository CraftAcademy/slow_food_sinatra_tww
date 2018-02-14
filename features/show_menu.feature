Feature: let_custemers_see_menu
as a owner.
to be able to let costumers buy food.
You want to display a Menu on a page.

Background:
  Given "Pasta" is in "Menu"
  And "Köttbullar" is in "Menu"

Scenario:
  When the user visits the site
  Then the user should se the "Menu"
  And user should se the "Pasta"
  And user should se the "Köttbullar"
