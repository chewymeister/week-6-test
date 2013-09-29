
Feature: List all peeps
	Upon visiting the home page
	The user should see all peeps regardless of whether they have signed in or not

	Scenario Outline: when peeps have been added
		Given there are peeps that have "<content>" written by "<name>" with the chandle "<chandle>"
		When the user visits the home page
		Then all "<content>" should be displayed
		And the "<name>" should be displayed
		And the "<chandle>" should be displayed next to the name

		Examples: 
			| name    | chandle      | content                             |
			| Srik    | Srikster     | Makers Academy is awesome!          |
			| Enrique | Ecomba       | Can't wait for Friday to be over... |
			| Jon     | Chewymeister | Can't wait to start JavaScript!     |	