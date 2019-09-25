module ProjectsHelper
    def admin
        @user = User.find(session[:user_id])
        user_id = @user.id
    end
    
end
