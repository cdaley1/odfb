When(/^I download a document$/) do
	sleep 2
	@download = @app.download_page
	@download.select_file :'Samplepp.pptx'
	#@download.select_file1
end

Then(/^It should download or open in onedrive$/) do
	@browser.windows.last.use
	expect(@browser.url).to include "https://fspqmul-my.sharepoint.com/personal/courtney_fspqmul_onmicrosoft_com/_layouts/15/WopiFrame.aspx?"
	@browser.windows.last.close
end
