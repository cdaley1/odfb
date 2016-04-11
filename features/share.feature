Feature: Share document 

@share
Scenario: Share a Document with a colleague
Given I am in my OneDrive
When I select a document
And I select share
And I enter the required details to share the document
Then the file should be shared with a desired colleague
