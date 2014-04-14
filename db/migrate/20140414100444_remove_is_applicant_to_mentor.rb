class RemoveIsApplicantToMentor < ActiveRecord::Migration
  def change
    remove_column :mentors, :is_applicant, :boolean
  end
end
