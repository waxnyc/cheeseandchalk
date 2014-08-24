class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :comments

  def self.search(name)
    where("name ILIKE ?", "%#{name}%") #% allows to type a few letters & get a return name
  end
end
