class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :content, presence: true
  validates :restaurant, presence: true
end
