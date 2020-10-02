class UsersController < ApplicationController
  skip_before_action :user_authentication, only: :create

  def index
    @users = User.search(params[:keyword])
  end

  def create
    @user = User.new(user_params)
    @result = @user.save
    @user.sign_in if @result
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
