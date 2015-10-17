Feature: Create an account
	As an applicant
	So that I can apply and track my application
	I want to create an account

Scenario: Redirecting to Signup Page
  Given I am on the login page
  When I follow "Sign up"
  Then I should be on the signup page

Scenario: Redirecting to dashboard on successful signup
  Given I am on the signup page
  When I enter the following signup details: fname1, lname1, 8888, email1@gg.com, password1, password1
	And I press "Sign up"
  Then I should be on the new registration page


Scenario: Validation for existing email and wrong password confirmstion for signup
	  Given I am on the signup page
	  When I enter the following signup details: fname1, lname1, 8888, email1@gg.com, password2, password3
		And I press "Sign up"
	  Then I should see "Password confirmation doesn't match Password"

Scenario: Insufficient password validation for signup
		  Given I am on the signup page
		  When I enter the following signup details: fname1, lname1, 8888, email1@gg.com, aass, djdk
			And I press "Sign up"
		  Then I should see "Password is too short"

Scenario: Validation for empty email and empty password for signup
			  Given I am on the signup page
			  When I enter the following signup details: fname1, lname1, 8888, email2, ,
				And I press "Sign up"
			  Then I should see "Email is invalid"
