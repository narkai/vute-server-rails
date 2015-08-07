class UsersController < ApplicationController

	# before_action :authenticate
	# before_action :doorkeeper_authorize!

	# def index
	# 	users = User.all
	# 	render json: users
	# end

	# def new
 #    	@user = User.new
 #  	end

	# def create
	# 	# user = User.find_by_email(params[:email])
	# 	# # p user
	# 	# unless user
	# 	# 	@user = User.create!(params[:user])
	# 	# end

	# 	@user = User.create(params[:user])
	# 	# @user = User.create!(params.permit(:name, :email, :password_digest, :password, :password_confirmation))
	# 	# @user = User.create!(user_params)
	# 	# @user = User.create! :name => params[:name], :email => params[:email], password: params[:password], password_confirmation: params[:password_confirmation]
	# 	# @user = User.create!(create_params)

	# 	# @user = User.new(params[:name], params[:email])
	# 	# @user.password = params[:password]
	# 	# @user.password_confirmation = params[:password]
	# 	# @user.save

	# 	# p "create useeeer"
	# 	# p params
	# 	# p params[:data][:attributes][:password]

	# 	head :ok 
	# end

	# def destroy
	# 	User.find(params[:id]).destroy
	# end

	# private

	# def current_user
	#   @current_user ||= User.find(doorkeeper_token[:resource_owner_id])
	# end

	# def user_params
	#   params.require(:user).permit(:name, :email, :password_digest, :password, :password_confirmation)
	# end

	# def create_params
 #    params.require(:user).permit(
 #    	:name, :email, :password, :password_confirmation
 #    )
 #  end

end