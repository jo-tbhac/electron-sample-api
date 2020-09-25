class ApplicationController < ActionController::API
  before_action :user_authentication

  def user_authentication
    token = request.headers['X-Auth-Token']
    @user = User.find_by(remember_token: token)
    render json: { errors: [{ message: 'invalid request' }] }, status: :unauthorized if @user.nil?
  end
end
