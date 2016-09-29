class UsersController < ApplicationController
  def index
  end

  def register
  	if !session[:user_id]
	  	@user = User.create(first_name:params[:first_name],last_name:params[:last_name],email:params[:email],password:params[:password],password_confirmation:params[:password_confirmation], location:params[:location], state:params[:state])
	  	if @user.valid?
	  		session[:user_id] = @user.id
	  		redirect_to '/events'
	  	else
	  		redirect_to '/', :notice => @user.errors.full_messages
	  	end 
	  end 
  end

  def login
  	if !params[:email].blank? && !params[:password].blank?
  		user = User.find_by_email(params[:email])
	  	if user 
	  		if  user.authenticate(params[:password])
	  			session[:user_id] = user.id
	  			redirect_to '/events'
	  		else 
	  			redirect_to '/', :alert =>  "Email/password do not match. Try again."
	  		end
	  	else
	  		redirect_to '/', :alert =>  "Email does not exist."
	  	end
	  else
	  	redirect_to '/', :alert =>  "Email and Password cannot be blank."
	  end
  end

  def logout
  	session[:user_id] = nil
    redirect_to '/'
  end

end 
