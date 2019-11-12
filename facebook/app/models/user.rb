class User < ApplicationRecord
  has_many :posts, foreign_key: 'user_id', class_name: 'Post'
  validates :first_name, presence:true
  validates :last_name, presence:true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
