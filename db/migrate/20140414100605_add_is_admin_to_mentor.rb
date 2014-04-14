class AddIsAdminToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :is_admin, :boolean, :default => false
  end
end
