Feature: Create an account
	As an applicant
	So that I can apply and track my application
	I want to create an account

Scenario: redirecting to Signup Page
  Given I am on the login page
  When I follow "Sign up"
  Then I should be on the signup page

Scenario: redirecting to jobs page
  Given I am on the signup page
  When I enter the following signup details: fname1, lname1, 8888, email1, password1, password1
	And I press "Sign up"
  Then I should be on the new registration page

Scenario: error on wrong signup
  Given I am on the signup page
  When I enter the following signup details: fname1, lname1, 8888
	And I press "Sign up"
  Then I should see "errors prohibited this user from being saved:"
