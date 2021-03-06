class User < ApplicationRecord
  has_secure_password 
  has_many :businesses
  has_many :items, through: :businesses

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
