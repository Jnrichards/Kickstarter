class ProjectsController < ApplicationController
  def new
    @user = User.find(params[:user])
  end

  def index
  end

  def create
    @user = User.find(params[:user])
    session[:user_id] = @user.id
    @user.project.create(projects_params)
    redirect_to user_path(@user)
  end

  def show
  end

  def destroy
  end

  private
  
  def projects_params
    params.require(:project).permit(:title, :goal)
  end
end
