Feature: Apply for jobs
	As an applicant
	So that I can apply for jobs

	Scenario: redirecting to Login Page
	  Given I am on the home page
	  When I follow "Login"
	  Then I should be on the login page

	Scenario: Logging as applicant
	  Given I am on the applicant home page
	  Then I should see "Open jobs"
