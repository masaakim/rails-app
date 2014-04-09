class Mentor < ActiveRecord::Base
  belongs_to :location

  validates :fb_user_id, presence: true
  validates :fb_token, presence: true
  validates :fb_token_secret, presence: true
  validates :grade, presence: true
  validates :rank, presence: true
  validates :is_applicant, presence: true
  validates :is_admin, presence: true
end
