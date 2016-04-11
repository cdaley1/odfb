When(/^I select share$/) do
	sleep 3
	@browser.divs(class: "CommandBarItem beak-anchor command")[3].when_present.click
end

When(/^I enter the required details to share the document$/) do
	@share_file = @app.share_file_page
	@share_file.enter_details
end

Then(/^the file should be shared with a desired colleague$/) do
	@browser.refresh
	SW = @browser.spans(class: "DetailsRow-cell SharedWith")[1]
	puts "This Document is Shared With: " + SW.text 
end
