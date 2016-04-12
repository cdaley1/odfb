When(/^I navigate to the recycle bin$/) do
	@restore = @app.restore_page
	@restore.navigate

end

When(/^choose to restore all the items in there$/) do
	@restore.restore_items
end

Then(/^the items should return to my OneDrive list$/) do
	@browser.refresh
	file_list_end = @browser.spans(class: "DetailsRow-cell name").count
	puts "File count at end: #{file_list_end}"
	sleep 3
	expect(file_list_end).to be > $file_list
end
