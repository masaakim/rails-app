class Category < ActiveRecord::Base
  has_many :event
  has_many :lesson

  validates :name, presence: true
end
