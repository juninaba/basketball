class RoomsController < ApplicationController

  def show
    @user = User.find(params[:id])
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

end
