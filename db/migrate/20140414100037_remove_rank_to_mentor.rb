class RemoveRankToMentor < ActiveRecord::Migration
  def change
    remove_column :mentors, :rank, :integer
  end
end
