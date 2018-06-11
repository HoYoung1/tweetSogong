class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pictures
  has_many :comments

  # 나를 follow한 사람들을 가져오기위함
  has_many :follower_table, foreign_key: "followed_id", class_name: "Follow"
  has_many :followers, through: :follower_table, source: :follower
  
  # 내가 follow한 사람들을 가져오기 위함
  has_many :myFollow_table, foreign_key: "follower_id", class_name: "Follow"
  has_many :myfollows, through: :myFollow_table, source: :followed
  
  #
  mount_uploader :profile, ProfileUploaderUploader
  
  
  
end
