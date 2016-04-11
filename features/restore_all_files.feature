Feature: Restore all files

@restore @clean
Scenario: Restore all files from the recycle bin
Given I am in my OneDrive
When I navigate to the recycle bin 
And choose to restore all the items in there
Then the items should return to my OneDrive list
