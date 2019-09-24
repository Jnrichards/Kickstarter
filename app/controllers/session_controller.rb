class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])

    if @user.nil?
      redirect_to new_user_path
    else
      if @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to login_path
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
