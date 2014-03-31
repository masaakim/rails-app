class Event < ActiveRecord::Base
  belongs_to :category
  belongs_to :location

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :place, presence: true
  validates :place_url, presence: true
  validates :staff_count, presence: true
  validates :is_closed, presence: true
end
