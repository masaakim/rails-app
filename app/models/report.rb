class Report < ActiveRecord::Base
  belongs_to :assignment

  validates :q_1, presence: true
  validates :q_2, presence: true
  validates :q_3, presence: true
  validates :q_4, presence: true
  validates :q_secret, presence: true
end
