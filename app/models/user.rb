class User < ActiveRecord::Base
  has_many :words
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
