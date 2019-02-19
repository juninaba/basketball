class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :prefecture
  #ユーザーが削除されたら関連するdetailも削除される
  has_one :detail, dependent: :destroy
  has_many :messages
  has_one_attached :avatar

  validates :name, presence: true
  validates :prefecture_id, presence: :true
  validates :team, presence: :true
  validates :gender, presence: :true
  validates :nickname, presence: true, length: {maximum: 6}

  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships

  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

  def matchers
    User.where(id: follower_relationships.select(:follower_id))
     .where(id: following_relationships.select(:following_id))
  end

end
