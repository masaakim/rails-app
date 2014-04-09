class Assignment < ActiveRecord::Base
  has_many :event
  has_many :mentor
end
