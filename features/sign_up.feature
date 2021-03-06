
Feature: When a user signs up

	Scenario: the user is not registered
		When the user signs up as a new user with the email "test@test.com" and the password "test" and the confirmation "test" and the name "Test Test" and the chandle "£test"
		Then the user count should go up by one
		And the page should display the message "Welcome, £test!"
		And the user's name should be "Test Test"
		And the user's email should be "test@test.com"

	Scenario: the user is already registered
		Given the user has already signed up
		When the user tried to sign up again
		Then the number of users do not increase by one
		And the message "This email is already taken" is displayed

	Scenario: with a password that doesn't match
		When the user signs up as a new user with the email "test@test.com" and the password "test" and the confirmation "wrong" and the name "Test Test" and the chandle "£test"
		Then the user count should not go up by one
		And the current path should be "/users"
		And the user should see the message "Sorry, your passwords don't match"
