class UserController < ApplicationController
helper_method :generate_nav
def index
	render "home_logged_in"	
	
end

def login
	session[:rstuff_user] = 1
	session[:rstuff_key] = "asdfasdf"
end

def generate_nav
	html_fill = ""
	if !params[:id].nil?
		if @_session
			if params[:id].to_i == session[:rstuff_user].to_i
				html_fill = '<h3><a href="#">My User Info</a></h3>
		<div>
			<center>
			<div style="width:150px;height:150px;border: 1px solid black">user image</div>
			<p>couple of lines<br>of whatever user info<br>we fee like</p>
			</center>
		</div>
		<h3><a href="#">Messages</a></h3>
		<div>
			<p>
			This will be a view for showing in the inbox of a user\'s homepage
			</p>
		</div>
		<h3><a href="#">Notifications</a></h3>
		<div>
			<p>
			This will be a feed view for a user
			</p>
		</div>'
			else
				html_fill = '<h3><a href="#">Other User Info</a></h3>
		<div>
			<center>
			<div style="width:150px;height:150px;border: 1px solid black">user image</div>
			<p>couple of lines<br>of whatever user info<br>we fee like</p>
			</center>
		</div>
		<h3><a href="#">Message</a></h3>
		<div>
			<p>
			This will be a way for a user to send a quick msg to the one they are viewing
			</p>
		</div>
		<h3><a href="#">Follow User</a></h3>
		<div>
			<p>
			This will be a prompt for following or unfollowing a user
			</p>
		</div>'
			end
		
		else
		html_fill = '<h3><a href="#">User Info</a></h3>
		<div>
			<center>
			<div style="width:150px;height:150px;border: 1px solid black">user image</div>
			<p>couple of lines<br>of whatever user info<br>we fee like</p>
			</center>
		</div><h3><a href="#">Sign Up</a></h3>
		<div>
			<p>here are ways you can sign up quickly and begin sharing with this person</p>
		</div>'
		end
	else
		redirect_to(:root)
	end
return html_fill
end


end
