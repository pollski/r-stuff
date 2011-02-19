class ApplicationController < ActionController::Base
 
  before_filter :session_check
  helper ApplicationHelper
  @_session = false 

  protected
  def session_check
  	if session[:rstuff_user].nil? or session[:rstuff_key].nil?
  		@_session = false;
  	else
  		@_session = true;
  	end
  	
  end
  
  def _status
  	if @_session
  		return "Welcome So and So"
  	else
  		return "<span class='login_items' id='login_btn'>Login</span> | <span id='signup_btn' class='login_items'  >Sign Up</span>"
  	end
  end

  
 end
