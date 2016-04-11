class ShareFilePage <GenericPage

	def select_share
		sleep 3
		@browser.divs(class: "CommandBarItem beak-anchor command")[3].when_present.click
	end

	def enter_details
		start_time = Time.new

  	pp = @browser.input(id: "PeoplePicker-textBox")
		pp.when_present.click
		pp.send_keys "joele@foundation-sp.com"

		person = @browser.div(class: "ms-Persona-details")
		person.when_present.click

		can_view = @browser.select_list(class: "Sharing-cell Sharing-simpleRoleSelector")
		can_view.select 'Can view'

		message = @browser.textarea(class: "Sharing-mailInput")
		message.click
		message.send_keys "Check this out"

		share_btn = @browser.button(class: "ms-Dialog-action ms-Button ms-Button--primary")
		share_btn.click
		sleep 2
		@browser.alert.exists?

		end_time = Time.new
  	duration = end_time - start_time
  	puts "Step duration: #{duration}"
	end



end
