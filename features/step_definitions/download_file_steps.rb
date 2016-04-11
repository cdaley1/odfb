When(/^I download a document$/) do
	@download = @app.download_page
	#@download.select_file1
	@download.select_file :'Samplepp.pptx'
end

Then(/^It should download or open in onedrive$/) do
	@browser.windows.last.use
	expect(@browser.url).to include "https://fspqmul-my.sharepoint.com/personal/courtney_fspqmul_onmicrosoft_com/_layouts/15/WopiFrame.aspx?sourcedoc={077A1F73-CC4F-4BC5-BE6B-01444910D78B}&file=Copy%20of%20Managed%20Services%20-%20New%20Starter%20on%20boarding.xlsx&action=default"
	@browser.windows.last.close
	#puts @browser.performance.summary

	@logout = @app.login_page
	@logout.logout
end
