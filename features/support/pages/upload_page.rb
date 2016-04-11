class UploadPage < GenericPage

  def select_file_upload
    @browser.div(class: "CommandBarItem-uploadInput").click
  end

  def add_file(file_type, operating_system)
    if file_type == :docx
      path = UPLOADFILEDATA["files"][0]["path"]
    elsif file_type == :pdf
      path = UPLOADFILEDATA["files"][1]["path"]
    elsif file_type == :pptx
      path = UPLOADFILEDATA["files"][2]["path"]
    end

   	 if operating_system == :windows
      current_dir = "#{Dir.pwd}".tr("/", "\\")
      path = path.tr("/","\\")
      @browser.input(class: "CommandBarItem-fileInput").send_keys "#{current_dir}#{path}"
      sleep 1
      elsif operating_system == :ubuntu
      @browser.input(class: "CommandBarItem-fileInput").send_keys "#{Dir.pwd}#{path}"
      sleep 1
  	 end
   end
   
end
