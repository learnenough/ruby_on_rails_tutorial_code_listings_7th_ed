class User < ApplicationRecord
  validates :name,  presence: true
  validates :email, presence: true
end
