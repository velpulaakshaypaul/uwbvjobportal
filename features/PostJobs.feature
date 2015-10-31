Feature: Post jobs
	As an admin
	So that I can track the applicants
	I want to create jobs

	Scenario: redirecting to Login Page
	  Given I am on the home page
	  When I follow "Login"
	  Then I should be on the login page

		Scenario: Posting new job as admin
		  Given I am on the login page
		  When I enter the following login credentials: email1@@gg.com, password1
			And I press "Log in"
		  Then I should be on the jobs page
