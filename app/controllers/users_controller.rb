class UsersController < ApplicationController
  def index
    @users = User.all
    @football = User.where(sport_id: 1)
    @tabletennis = User.where(sport_id: 2)
    @tennis = User.where(sport_id: 3)
    @handball = User.where(sport_id: 4)
    @basketball = User.where(sport_id: 5)
    @badminton = User.where(sport_id: 6)
    @volleyball = User.where(sport_id: 7)
    @softbaseball = User.where(sport_id: 8)
    @hardbaseball = User.where(sport_id: 9)
  end

  def show
    @user = User.find(params[:id])
    @detail = @user.detail
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

end
