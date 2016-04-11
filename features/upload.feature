Feature: Upload file to OneDrive

@upload
Scenario: Upload a word document
Given I am in my OneDrive
When I upload a word document 
Then I should see it in my library
