class FollowingsController < ApplicationController

  before_filter :find_current_user

  def create
    @following = @user.followings.build(:followee_id => params[:followee_id])

    if @following.save
      flash[:notice] = "You are following #{@following.followee.name}"
      redirect_to @user
    else

    end
  end

  def destroy
    @following = @user.followings.find(params[:id])
    name = @following.followee.name
    @following.destroy
    flash[:notice] = "You no more follow #{name}"
    redirect_to @user
  end

  private
  def find_current_user
    @user = User.find(params[:user_id])
  end
end
