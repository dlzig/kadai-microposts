class Micropost < ApplicationRecord
  belongs_to :user
  
  # お気に入り機能
  has_many :favorites
  has_many :liker, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
