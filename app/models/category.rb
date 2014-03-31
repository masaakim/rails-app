class Category < ActiveRecord::Base
  has_many :event

  validates :name, presence: true
end
