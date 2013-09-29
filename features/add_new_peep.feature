@sign_in_out
Feature: User makes a peep
	Upon visiting the home page
	The user should be able to peep

	Scenario: When user adds a link to the home page
	When the user signs in with the email "test@test.com" and the password "test"
	Then the user adds a peep with the content "hello world!"
	And the peep should have the user's name "Test Test"
	And the peep should have the user's chandle "£test"