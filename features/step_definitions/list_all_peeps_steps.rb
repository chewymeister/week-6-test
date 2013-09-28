Given(/^there are peeps that have "(.*?)" written by "(.*?)" with the chandle "(.*?)"$/) do |content, name, chandle|
	Peep.create(:name => name, :chandle => chandle, :content => content)
end

When(/^the user visits the home page$/) do
	visit('/')
end

Then(/^all "(.*?)" should be displayed$/) do |peep|
	expect(page).to have_content(peep)
end

Then(/^the "(.*?)" should be displayed$/) do |name|
	expect(page).to have_content(name)
end

Then(/^the "(.*?)" should be displayed next to the name$/) do |chandle|
	expect(page).to have_content(chandle)
end