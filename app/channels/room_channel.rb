class RoomChannel < ApplicationCable::Channel
  #speakアクションを持つRoomチャンネル
  #サーバーサイドの処理を受け持つチャンネル
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # クライアントから送信されたmessageデータを受け取り、DBに保存
    Message.create! content: data['message'], user_id: current_user.id
  end
end
