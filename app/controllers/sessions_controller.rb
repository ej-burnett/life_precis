class SessionsController < ApplicationController
  def new
  	
  end

  def create
  	puts "here3"
    puts params[:session][:email_address]
    puts params[:session][:password]
    @user = User.authenticate(params[:session][:email_address], params[:session][:password])

  	if @user.nil?
  		flash.now[:error] = "Invalid email/password combination."
  		render :new
  	else
  		sign_in @user
  		redirect_to @user
  end
end

  def destroy
  	sign_out
  	redirect_to signin_path
  end
end
