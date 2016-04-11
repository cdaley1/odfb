class LoginPage <GenericPage

  def visit
    @browser.goto "https://onedrive.live.com/about/en-US/business/"
  end

  def enter_details(username, password)
    @browser.a(class: "NavBar-link js-openSignInDialog").click
    @browser.input(class: "SignInDialog-input SignInDialog-input--email").to_subtype.clear.clear
    @browser.input(class: "SignInDialog-input SignInDialog-input--email").send_keys "courtney@fspqmul.onmicrosoft.com"
    @browser.span(class: "ms-Button-label SignInDialog-buttonLabel").click
  	@browser.input(id: "cred_password_inputtext").when_present.send_keys password
    2.times do
      @browser.send_keys :tab
      @browser.send_keys :tab
      @browser.send_keys :enter
    end
  	#@browser.span(id: "cred_sign_in_button").click
  end

  def load_user_data(val)
  	username = USERDATA["users"][val]["username"]
  	password = USERDATA["users"][val]["password"]
  	enter_details(username, password)
  end

  def login_as(user_type)
  	if user_type == :courtney
  		load_user_data(0)
  	end
  end

  def logout
    @browser.divs(class: "o365cs-nav-topItem")[17].when_present.click
    @browser.div(title: "Sign out and return to the Sign-in page").when_present.click
  end

end
