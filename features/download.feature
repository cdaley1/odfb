Feature: Download/open file from OneDrive

@download @clean
Scenario: Download a document
Given I am in my OneDrive
When I download a document 
Then It should download or open in onedrive
