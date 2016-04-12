Given(/^I am on the login page$/) do
  @login = @app.login_page
  @login.visit
end

When(/^I enter my credentials$/) do
  @login.login_as(:courtney) 
end

Then(/^I should be taken to my OneDrive my\-site$/) do
	#Get page load time
  load_secs = @browser.performance.summary[:response_time] / 1000.to_f
  puts "Load Time: #{load_secs} seconds."
  Watir::Wait.until { @browser.as(class: "LeftNav-subLink ms-font-m")[3].exists? }
  expect(@browser.url).to include("courtney_fspqmul_onmicrosoft_com")
end
