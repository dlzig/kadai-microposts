class Micropost < ApplicationRecord
  belongs_to :user
  
  # お気に入り機能
  has_many :favarites
  has_many :user, through: :favarites
  
  validates :content, presence: true, length: { maximum: 255 }
end
