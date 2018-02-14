Given("User visits the site") do
  visit '/' # Write code here that turns the phrase above into concrete actions
end

When("User clicks on the {string} button") do |button|
  # binding.pry
  click_on(button) # Write code here that turns the phrase above into concrete actions
end

Then("He should be redirected to {string}") do |string|
  visit '/signup'
end

Then("He fills in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He fills in a {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("He clicks {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He sees message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He should be on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
