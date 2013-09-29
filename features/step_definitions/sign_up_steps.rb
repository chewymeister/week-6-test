When(/^the user signs up as a new user with the email "(.*?)" and the password "(.*?)" and the confirmation "(.*?)" and the name "(.*?)" and the chandle "(.*?)"$/) do |email, password, confirmation, name, chandle|
	sign_up email, password, confirmation, name, chandle
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

Given(/^the user has already signed up$/) do
	sign_up
end

When(/^the user tried to sign up again$/) do
	sign_up
end

Then(/^the number of users do not increase by one$/) do
	expect(User.count).to eq 1
end

Then(/^the message "(.*?)" is displayed$/) do |message|
	expect(page).to have_content(message)
end

Then(/^the user count should not go up by one$/) do
	expect(page).not_to eq 1
end

Then(/^the current path should be "(.*?)"$/) do |path|
	expect(current_path).to eq(path)
end

Then(/^the user should see the message "(.*?)"$/) do |message|
	expect(page).to have_content(message)
end

def sign_up email="j@j.com", password="123", confirmation="123", name="j", chandle="£j"
  visit '/users/new'
  fill_in :email, :with => email
  fill_in :password, :with => password
  fill_in :password_confirmation, :with => confirmation
  fill_in :name, :with => name
  fill_in :chandle, :with => chandle
  click_button "Sign up"
end

