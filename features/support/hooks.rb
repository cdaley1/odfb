#Set up browser
browser = Watir::Browser.new (ENV['BROWSER'] || 'firefox').to_sym


scenario_times = {}
 
Around() do |scenario, block|
  start = Time.now
  block.call
  scenario_times["#{scenario.feature.file}::#{scenario.name}"] = Time.now - start
end
 
at_exit do
  browser.close
  headless.destroy if ENV['HEADLESS']

  max_scenarios = scenario_times.size > 20 ? 20 : scenario_times.size
  puts "------------- Top #{max_scenarios} slowest scenarios -------------"
  sorted_times = scenario_times.sort { |a, b| b[1] <=> a[1] }
  sorted_times[0..max_scenarios - 1].each do |key, value|
    puts "#{value.round(2)}  #{key}"
  end
end

Before do
  @browser = browser
  @browser.window.resize_to(1280, 900)
  @browser.cookies.clear
  @base_url = "https://onedrive.live.com/about/en-US/business/"
  @app = App.new @browser
end

After('@login, @download, @delete, @share, @restore') do
  @logout = @app.login_page
  @logout.logout
end
