class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_for "chat_room_#{params[:room_id]}"
  end

  def unsubscribed
    # Any clkanup needed when channel is unsubscribed
  end

  def speak(data)
    message = RoomMessage.create(room_id: data['room_id'], user_id: data['user_id'], message: data['message'])
    ChatRoomChannel.broadcast_to "chat_room_#{data['room_id']}", content: render_message(message)
  end

  private
    def render_message(message)
      ApplicationController.renderer.render(partial: 'room_messages/room_message', locals: { room_message: message })
    end
end
