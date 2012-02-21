class UsersController < ApplicationController
  
  def index
    @users = User.find(:all, :order => 'user_name')
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'User #{@user.user_name} Created Successfully.'
      redirect_to :action => 'index'
    else
      flash.now[:notice] = 'Not Saved'
      render :action => 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = '#{ @user.user_name } Updated Successfully.'
      redirect_to :action => 'show'
    else
      flash[:notice] = 'Not Updated'
      render :action => 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = '#{@user.user_name} is Permanetly deleted.'
    redirect_to :action => "index"
  end
end
