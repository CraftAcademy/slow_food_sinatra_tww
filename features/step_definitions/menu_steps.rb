Given("{string} is a {string} on {string}") do |product_name, catagory, menu_name|
  @menu = Menu.create(name: menu_name)
   Product.create(catagory: catagory, name: product_name, menu: @menu)
end

When("the user visits the menu page") do
  visit "/menu"
end

Then("the user should see {string}") do |string|
  expect(page).to have_content text
end

Then("show me the page") do
  save_and_open_page
end
