module ApplicationHelper

		def send_text
		twilio_sid = ENV["TWILIO_SID"]
		twilio_token = ENV["TWILIO_TOKEN"]
		twilio_phone_number = "+18182769377"
		twilio_url = "http://twimlets.com/callme?PhoneNumber=6266443347&Message=HI%20HOW%20ARE%20YOU%3F%20&FailUrl=%22http%3A%2F%2Ftwimlets.com%2Fvoicemail%3FEmail%3Dworkemaillex%40gmail.com%26Message%3DPlease%2BLeave%2BA%2BMessage%22&"
		# rememeber this: the scope of a variable within a method is limited to that 
		# method unless you definie it globally. So you couldn't access the 
		# the twilio token or id because it was defined outside of this method
		# however the class aka message could use it 
		@client = Twilio::REST::Client.new(ENV["TWILIO_SID"],  ENV["TWILIO_TOKEN"]) 
		@message = @client.account.messages.create({
			:from => twilio_phone_number,
			:to =>   self.number,
				# right here we're simply calling the phone number method for message 
			:body => self.content})


		 
	end





end
