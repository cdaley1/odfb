Feature: Login into OneDrive

@login @clean
Scenario: Login with correct credentials
Given I am on the login page
When I enter my credentials 
Then I should be taken to my OneDrive my-site



