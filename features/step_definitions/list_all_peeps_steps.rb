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

Given(/^that a peep has been created$/) do
	Peep.create(:name => "jon", :chandle => "£panda", :content => "hello world")
	expect(Peep.first(:name => "jon")).to be_an_instance_of Peep
# visit('/')
end


Then(/^the content should match "(.*?)"$/) do |content|
	visit('/')
	expect(page).to have_content(content)
end

Then(/^the name should match "(.*?)"$/) do |name|
  pending # express the regexp above with the code you wish you had
end

Then(/^the chandle should match "(.*?)"$/) do |chandle|
  pending # express the regexp above with the code you wish you had
end


# Given(/^there is a link "(.*?)" pointing to "(.*?)" with the tag "(.*?)"$/) do |title, url, tag|
#   Link.create(:url => url,
#               :title => title,
#               :tags => [Tag.first_or_create(:text => tag)])
# end

# When(/^the user visits the "(.*?)" page$/) do |urn|
#   visit "/tags/#{urn}"
# end

# Then(/^the user should see "(.*?)"$/) do |title|
#   expect(page).to have_content(title)
# end