class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validates :body, presence: true
  validates :restaurant, presence: true, uniqueness: true
end
