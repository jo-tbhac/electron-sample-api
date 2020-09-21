class UsersController < ApplicationController
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
