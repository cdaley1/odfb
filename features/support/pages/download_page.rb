class DownloadPage

	def initialize(browser)
    @browser = browser
  end

  def select_file(file_name)
		@browser.a(text:/.*#{file_name}.*/i).click
	end

	def select_file1
		@browser.spans(class: "DetailsRow-cell name")[0].when_present.click
	end

end
