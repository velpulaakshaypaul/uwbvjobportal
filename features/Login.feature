Feature: Login to my account
	As an applicant/UWBV administrator
	So that I can access my account
	I want to login


Scenario: redirecting to Login Page
  Given I am on the home page
  When I follow "Login"
  Then I should be on the login page

Scenario: redirecting to jobs page
  Given I am on the login page
  When I enter the following login credentials: nikitapatil@tamu.edu, nikitpatil
	And I press "Log in"
  Then I should be on the jobs page

Scenario: error on wrong credentials
  Given I am on the login page
  When I enter the following login credentials: jdfjd, dkdkkjj
	And I press "Log in"
  Then I should see "Invalid email or password."
