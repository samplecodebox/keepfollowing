class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User has been successfully created"
      redirect_to @user
    else
      flash[:alert] = "User has not been created"
      render :action => "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
        flash[:notice] = "User has been successfully updated"
        redirect_to @user
    else
        flash[:alert] = "User cannot be updated"
        render :action => "edit"
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User has been successfully deleted"
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    @other_users = User.all
    @other_users.delete(@user)
  end
end
