class User < ApplicationRecord
  acts_as_favoritor
  has_many :parties
  has_many :comments
  has_many :attendings
  validates :username, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
