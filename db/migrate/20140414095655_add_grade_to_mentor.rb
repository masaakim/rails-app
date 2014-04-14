class AddGradeToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :grade, :integer, :default => 1
  end
end
