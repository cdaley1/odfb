Feature: Delete file

@delete @clean
Scenario: Delete a file from file list
Given I am in my OneDrive
When I select a document
And I choose to delete it
Then the file should no longer be on the list
