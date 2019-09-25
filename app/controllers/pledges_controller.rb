class PledgesController < ApplicationController
  def new

  end

  def index
  end

  def create
    @project = Project.find(params[:project_id])
    @user = User.find(params[:user_id])
    @project.pledges.create(amount: params[:pledge][:amount], user_id: @user.id )
    redirect_to user_project_path(@user, @project)
  end

  def show
  end

  def destroy
  end
end
