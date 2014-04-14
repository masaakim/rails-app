class AddRankToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :rank, :integer, :default => 1
  end
end
