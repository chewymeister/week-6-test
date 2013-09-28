When(/^the user signs up as a new user with the email "(.*?)" and the password "(.*?)" and the confirmation "(.*?)" and the name "(.*?)" and the chandle "(.*?)"$/) do |email, password, confirmation, name, chandle|
	sign_up email, password, confirmation, name, chandle
	# visit('/users/new')
end

Then(/^the user count should go up by one$/) do
	expect(User.count).to eq 1
end

Then(/^the page should display the message "(.*?)"$/) do |message|
	expect(page).to have_content(message)
end

Then(/^the user's name should be "(.*?)"$/) do |name|
	user = User.first
	expect(user.name).to eq name
end

Then(/^the user's email should be "(.*?)"$/) do |email|
	user = User.first
	expect(user.email).to eq email
end

def sign_up email, password, confirmation, name, chandle
  visit '/users/new'
  fill_in :email, :with => email
  fill_in :password, :with => password
  fill_in :password_confirmation, :with => confirmation
  fill_in :name, :with => name
  fill_in :chandle, :with => chandle
  click_button "Sign up"
end

