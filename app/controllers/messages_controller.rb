class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  	include Webhookable.rb 
  	after_filter :set_header

	def index 
		@messages = Message.all
	end 
 
	def edit 
		@message = Message.find(params[:id])
	end 
 
	def new
		@message = Message.new
	end  
 
	def create 
		@message = Message.new(message_params)
		if @message.save
			@message.send_text
		redirect_to messages_path(@message)
		else 
		render "new"
		end
	end
 
	def show 
		@message = Message.find(params[:id])
	end 

	
  	def store 
  	response = Twilio::TwiML::Response.new do |r|
 	 r.Message 'hello there', voice: 'alice'
  	r.Dial callerId: '+6266443347' do |d|
    	d.Client 'jenny'
  	end
	end
  	render action: "store.xml.builder", :layout => false 
	end 
 
	protected
	def message_params
		params.require(:message).permit(:content, :name, :number)
	end 
end
