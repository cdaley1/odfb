When(/^I select a document$/) do
	@browser.divs(class: "DetailsRow-check")[1].click

end

When(/^I choose to open it in powerpoint$/) do
	sleep 2
  @browser.spans(class: "CommandBarItem-commandText")[1].click
  @browser.spans(class: "ContextualMenu-commandText")[1].click
end

Then(/^I should sign out$/) do
	@logout = @app.login_page
	@logout.logout
end

