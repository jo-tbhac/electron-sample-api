class GroupsController < ApplicationController
  def index
    @groups = @user.groups
  end

  def create
    @group = Group.create(group_params)
  end

  private

  def group_params
    params.permit(:name, user_ids: [])
  end
end
