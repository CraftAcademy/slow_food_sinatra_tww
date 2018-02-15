Given("{string} is a {string} on {string}") do |product_name, catagory, menu_name|
  @menu = Menu.find_or_create_by(name: menu_name)
   Product.create(catagory: catagory, name: product_name, menu: @menu)
end

Given("the following products exist:") do |table|
  table.hashes.each do |product|
  #binding.pry
    @menu = Menu.find_or_create_by(name: product[:Menu])
    Product.create(catagory: product[:Catagory], name: product[:Name], menu: @menu)
  end
  binding.pry
end

When("the user visits the menu page") do
  visit "/menu"
end

Then("the user should see {string}") do |text|
  expect(page).to have_content text
end

Then("show me the page") do
  save_and_open_page
end
