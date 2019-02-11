class RoomChannel < ApplicationCable::Channel
  #サーバーサイドの処理を受け持つチャンネル
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create! content: data['message']
  end
end
