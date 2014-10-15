class CallsController < ApplicationController
  def new
  	@call  = Call.new(call_params)
  end

  def create 
  	@call = Call.new(call_params)
  end 

  def index
  	@calls = Call.all 
  end

  def edit
  	@call = Call.find(params[:id])
  end

  def destroy
  	@call = Call.find(params[:id])
  end



  protected 
  def call_params 
  	params.require(:call).permit(:number)
  end 

end
