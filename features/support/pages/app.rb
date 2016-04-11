class App
  def initialize(b)
    @browser = b
  end

  def login_page
    LoginPage.new @browser
  end

  def upload_page
  	UploadPage.new @browser
  end

  def download_page
  	DownloadPage.new @browser
  end

  def share_file_page
    ShareFilePage.new @browser
  end

end
