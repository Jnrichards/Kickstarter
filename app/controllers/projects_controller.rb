class ProjectsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    
  end


  def index
    @projects = Project.all
  end

  def create
    @user = User.find(params[:user_id])
    @user.projects.create(projects_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
  end

  def user_show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    Project.destroy(params[:id])
    redirect_to user_path(@user)
  end

  private
  
  def projects_params
    params.require(:project).permit(:title, :goal)
  end
end
