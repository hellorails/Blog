class AdminController < ApplicationController
  layout 'login_layout'
  def login
    if request.post?
      user = User.authenticate(params[:user_name].to_s, params[:password].to_s)
      if user
        session[:user_id] = user.id
        redirect_to(:action => "index", :id => user.id)
      else
        flash[:notice] = "Invalid user/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'logged out Successfully'
    redirect_to :action => "login"
  end

  def index
    @user = User.find(params[:id])
  end

end
