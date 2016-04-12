When(/^I choose to delete it$/) do
  @browser.spans(class: "CommandBarItem-commandText")[5].when_present.click
  @browser.button(class: "ms-Dialog-action ms-Button ms-Button--primary").when_present.click
end

Then(/^the file should no longer be on the list$/) do
	#expect(@browser.spans(class: "DetailsRow-cell name")[1]).exclude? "Courtney's actions.pptx"
end
