class Call < ActiveRecord::Base

	def call 
		twilio_phone_number ="+18182769377"
		@client = Twilio::REST::Client.new(ENV["TWILIO_SID"],  ENV["TWILIO_TOKEN"]) 
		@call = @client.account.calls.create({ :to => self.number, 
					:from => twilio_phone_number,
					:url => "http://twimlets.com/message?Message%5B0%5D=Hello%20this%20call%20is%20forwarding.%20&"
		})
	end 

validates :call, presence: true 

end
