class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  .
  .
  .
end
