class LoginController < ApplicationController

  def login

    if params[:q].nil? == false
    	@email_error = "fuckoff"
    	@password_error = "fuckoff too"
   	end
   	
  end
  
  def _status
  	if @_session
  		return "Welcome So and So"
  	else
  		return "<a href='#'>Login</a> / <a href='#'>Sign Up</a>"
  	end
  end
 
 end
