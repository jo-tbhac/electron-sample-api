class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    @result = @user&.authenticate(params[:password])

    if @result
      @user.sign_in
    else
      @errors = ['Invalid a email or password'] 
    end
  end
end
