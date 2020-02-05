class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :follows
  has_many :follower_relationship, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationship, source: :followers
  has_many :following_relationship, foreign_key: :user_id, class_name: 'Follow'
  has_many :following, through: :following_relationship, source: :following


  has_many :topics, class_name: 'Theme'
  has_many :answers
  has_many :questions
  has_many :follow_themes
  has_many :followed_themes, through: :follow_themes, source: :theme
end
