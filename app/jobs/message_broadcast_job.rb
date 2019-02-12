class MessageBroadcastJob < ApplicationJob
  # 非同期でブロードキャストするためのMessageBroadcastジョブを作成
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', message: render_message(message)
  end

  private
    def render_message(message)
      ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
    end
end


