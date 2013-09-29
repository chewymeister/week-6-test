When(/^the user signs in with the email "(.*?)" and the password "(.*?)"$/) do |email, password|
  sign_in email, password
end

Then(/^the user adds a peep with the content "(.*?)"$/) do |content|
  add_peep content
end

Then(/^the peep should have the user's name "(.*?)"$/) do |name|
  expect(page).to have_content name
end

Then(/^the peep should have the user's chandle "(.*?)"$/) do |chandle|
  expect(page).to have_content chandle
end

def add_peep(content)
  visit '/'
  within('#new-peep') do
    fill_in 'content', :with => content
    click_button 'Add peep'
  end      
end

def sign_in(email, password)
  visit '/sessions/new'
  fill_in 'email', :with => email
  fill_in 'password', :with => password
  click_button 'Sign in'
end

