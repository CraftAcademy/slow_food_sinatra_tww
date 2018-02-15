Given("User visits the site") do
  visit '/'

When("User clicks on the {string} button") do |button|
  click_on(button)

Then("He should be redirected to {string}") do |string|
  visit string
end

Then("He fills in {string} with {string}") do |field, input|
  fill_in(field, :with => input) 
end

Then("He clicks {string}") do |string|
  click_on(string)
end

Then("He sees message {string}") do |string|
  page.should have_content('signup successful')
end
