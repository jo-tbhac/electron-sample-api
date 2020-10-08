class MessagesController < ApplicationController
  def index
    @messages = Message.where(group_id: params[:group_id])
  end

  def create
    @message = Message.create(message_params)
  end

  private

  def message_params
    params.permit(:body, :group_id).merge(user_id: @user.id)
  end
end
