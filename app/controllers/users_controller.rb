class UsersController < ApplicationController
	#before_action :require_login

	def new
		@user = User.new
	end

	def create
		#binding.pry
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:admin, :name, :password, :nausea, :happiness, :tickets, :height)
	end

	def require_login
		redirect_to '/' unless session.include? :name
	end

end
