Given("{string} is in {string}") do |product_name, menu_name|
  @menu = Menu.create(name: menu_name)
  Product.create(name: product_name, menu: @menu)
end

When("the user visits the site") do
  visit "/menu"
end

Then("the user should se the {string}") do |text|
  
  expect(page).to have_content text
end

Then("user should se the {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
