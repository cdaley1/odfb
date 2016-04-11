Feature: Open file in PowerPoint

@powerp @clean
Scenario: Open a powerpoint file in external Powerpoint
Given I am in my OneDrive
When I select a document 
And I choose to open it in powerpoint
Then I should sign out
