class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: {maximum: 225 }
  
  has_many :favorites, dependent: :destroy
  has_many :lovers, through: :favorites, source: :user
end
