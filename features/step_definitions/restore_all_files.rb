When(/^I navigate to the recycle bin$/) do
	Watir::Wait.until { @browser.as(class: "LeftNav-subLink ms-font-m")[3].exists? }
	$file_list = @browser.divs(class: "List-cell").count
	puts "File count at start:  #$file_list"
	recycle_bin = @browser.as(class: "LeftNav-subLink ms-font-m")[3]
	recycle_bin.when_present.click

end

When(/^choose to restore all the items in there$/) do
	#Reference iframe
	frame = @browser.iframe(class: "ms-IframeLoader-iframe ms-IframeLoader-iframe--visible")
	#Tick Checkbox
	select_all_box = frame.checkbox(id: "idSelectAll")
	select_all_box.when_present.set
	#Click restore selection button
	restore_selection_button = frame.button(id: "QCB1_Button1")
	restore_selection_button.when_present.click
	#Handle confirmation alert
	@browser.alert.ok
	#Close iframe
	close_button = @browser.button(class: "ms-Dialog-button ms-Dialog-button--close")
	close_button.when_present.click
end

Then(/^the items should return to my OneDrive list$/) do
	@browser.refresh
	file_list_end = @browser.spans(class: "DetailsRow-cell name").count
	puts "File count at end: #{file_list_end}"
	sleep 3
	expect(file_list_end).to be > $file_list

	@logout = @app.login_page
	@logout.logout

end
