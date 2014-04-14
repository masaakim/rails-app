class RemoveGradeToMentor < ActiveRecord::Migration
  def change
    remove_column :mentors, :grade, :integer
  end
end
