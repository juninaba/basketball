class Message < ApplicationRecord
  # belongs_to :room
  belongs_to :user
  after_create_commit { MessageBroadcastJob.perform_later self }
  # データが作成されたら非同期でブロードキャスト処理を実行
end
