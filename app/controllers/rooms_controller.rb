class RoomsController < ApplicationController

  # def index
  #   @rooms = Room.all
  # end

  # def show
  #   @room = Room.find(params[:id])
  #   @messages = @room.messages
  # end

  def show
    @messages = Message.all
  end

  # def new
  #   @user = User.find_by(id: params[:id])
  #   @room = Room.new
  #   @room.users << current_user
  #   @room.users << @user
  #   @room.save
  #   redirect_to rooms_path
  # end

end
