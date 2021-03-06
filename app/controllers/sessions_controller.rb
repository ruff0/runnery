class SessionsController < ApplicationController

	def new
	end

	def create
    user = User.find_by(phone: params[:session][:phone])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or root_url
    else
      flash.now[:error] = 'Invalid phone/password combination'
      render 'new'
    end
  end

	def destroy
   sign_out
   redirect_to root_url
	end
end
