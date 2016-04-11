Given(/^I am in my OneDrive$/) do
  @login = @app.login_page
  @login.visit
  @login.login_as(:courtney)
end

When(/^I upload a word document$/) do
	start_time = Time.new

  @upload = @app.upload_page
  @upload.select_file_upload
  @upload.add_file(:docx, :ubuntu)
  
  end_time = Time.new
  duration = end_time - start_time
  puts "Step duration: #{duration}"
end

Then(/^I should see it in my library$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
