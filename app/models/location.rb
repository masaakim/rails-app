class Location < ActiveRecord::Base
  has_many :event
  has_many :mentor

  validates :name, presence: true
end
