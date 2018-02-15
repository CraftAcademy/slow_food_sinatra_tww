Given("{string} is in {string}") do |product_name, menu_name|
  @menu = Menu.create(name: menu_name)
  Product.create(catagory: "Starter", name: product_name, menu: @menu)
end

When("the user visits the menu page") do
  visit "/menu"
end

Then('show me the page') do
    save_and_open_page
end

Then("the user should see {string}") do |text|
    expect(page).to have_content text
end
