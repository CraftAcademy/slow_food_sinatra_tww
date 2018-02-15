Given("{string} is in {string}") do |product_name, menu_name|
  @menu = Menu.create(name: menu_name)
  Product.create(name: product_name, menu: @menu)
end

When("the user visits the site") do
  visit "/menu"
end

Then("the user should se the {string}") do |text|
    visit "/menu"
  expect(page).to have_content text
end

Then("user should se the {string}") do |text|
    visit "/menu"
  expect(page).to have_content text
end

Then("the user should see the {string}") do |text|
    visit "/menu"
  expect(page).to have_content text
end

Then("the user should see {string}") do |text|
    visit "/menu"
  expect(page).to have_content text
end

Then("user should see the {string}") do |text|
    visit "/menu"
  expect(page).to have_content text
end
