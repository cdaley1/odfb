Given(/^I am in my OneDrive$/) do
  @login = @app.login_page
  @login.visit
  @login.login_as(:courtney)
end

When(/^I upload a word document$/) do
  @upload = @app.upload_page
  @upload.select_file_upload
  @upload.add_file(:docx, :ubuntu)
end

Then(/^I should see it in my library$/) do
  puts "File uploaded"
end
