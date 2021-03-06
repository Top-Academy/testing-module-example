class User < ApplicationRecord
  has_many :tweets

  validates :name, presence: true
  validates :email, uniqueness: true
end
