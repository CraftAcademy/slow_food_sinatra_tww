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
  fill_in('name', :with => 'Holger') # Write code here that turns the phrase above into concrete actions
end

Then("He fills in a {string} with {string}") do |string, string2|
  #find('input_password').set 'password1'
  # within("[@id='input_password']") do
  #fill_in 'password', :with => 'password1'
  #    end
  fill_in('password', :with => 'password1')
   # Write code here that turns the phrase above into concrete actions
end

Then("He fills in a {string} with {string}") do |string, string2|
# pending
# #   #find('password_confirmation').set 'password1'
# #   # within("[@id='password_confirmation']") do
# #   #      fill_in 'password_confirmation', :with => 'password1'
# #   #    end
  fill_in('password_confirmation', :with => 'password1')
# #    # Write code here that turns the phrase above into concrete actions
end

Then("He clicks {string}") do |string|
 # Write code here that turns the phrase above into concrete actions
end

Then("He sees message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He should be on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
