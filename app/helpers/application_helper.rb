module ApplicationHelper
    def current_user
        if session[:user_id].nil? then return false end
        User.find(session[:user_id])
    end
end
