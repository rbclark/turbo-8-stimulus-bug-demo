class UsersController < ApplicationController
  before_action :find_group

  def index
    sleep 2
    @users = User.all.order(sort_column + ' ' + sort_direction)
  end

  private

  def find_group
    @group = Group.find(params[:group_id])
  end

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
