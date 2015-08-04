class UsersController < ApplicationController
	def index
		users = User.all
		render json: users
	end

	def create
		# user = User.find_by_email(params[:username])
		# unless user
		# 	@user = User.create!(params[:user])
		# end
		@user = User.create!(params[:user])
	end

	private

	# def current_user
	#   @current_user ||= User.find(doorkeeper_token[:resource_owner_id])
	# end

end
