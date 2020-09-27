require 'pry'
class SessionsController < ApplicationController
	def new
	end

	def create
		#binding.pry
		@user = User.find_by(name: params[:user][:name])
		session[:name] = params[:user][:name]
		if session[:name].nil? || session[:name].empty?
			redirect_to '/sigin'
		else
			redirect_to user_path(@user)
		end
	end

end
