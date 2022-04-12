class Micropost < ApplicationRecord
  validates :content, length: { maximum: 140 }
end
