@sign_in_out
Feature: User sign in

	Scenario: with correct credentials
	When the user visits the home page
	Then the user should not see the message "Welcome, £test"
	And when the user signs in with the email "test@test.com" and the password "test"
	Then the user should see the message "Welcome, £test"

  Scenario: with incorrect credentials
  When the user visits the home page
  Then the user should not see the message "Welcome, £test"
  And when the user signs in with the email "test@test.com" and the password "wrong"
  Then the user will not see the message "Welcome, £test!"
  And the user will see the message "The email or password is incorrect"