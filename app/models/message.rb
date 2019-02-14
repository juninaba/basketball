class Message < ApplicationRecord
  belongs_to :room, optional: true
  belongs_to :user, optional: true
  after_create_commit { MessageBroadcastJob.perform_later self }
  # データが作成されたら非同期でブロードキャスト処理を実行
end
