class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :favorites, foreign_key: 'micropost_id', dependent: :destroy
  has_many :users, through: :favorites
end
