class Lesson < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :pdf_file, presence: true
end
