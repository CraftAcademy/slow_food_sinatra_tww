Given("User has an account") do
  User.create(name: 'Holger', password: 'password1')
end

Given("User visits the site") do
  visit '/'
end

Given("User visits {string}") do |string|
  visit '/login'
end

When("User clicks on the {string} button") do |button|
  click_on(button)
end

Then("He should be redirected to {string}") do |link|
  visit link
end

Then("He fills in {string} with {string}") do |field, input|
  fill_in(field, :with => input)
end

Then("He clicks {string}") do |button|
  click_on(button)
end

Then("He sees message {string}") do |message|
  page.should have_content(message)
end
