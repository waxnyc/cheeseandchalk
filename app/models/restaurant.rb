class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :comments
end
