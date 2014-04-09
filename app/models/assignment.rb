class Assignment < ActiveRecord::Base
  has_many :event
  has_many :mentor
  has_one :report
end
