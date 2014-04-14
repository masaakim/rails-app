class AddIsApplicantToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :is_applicant, :boolean, :default => false
  end
end
