class RemoveIsAdminToMentor < ActiveRecord::Migration
  def change
    remove_column :mentors, :is_admin, :boolean
  end
end
