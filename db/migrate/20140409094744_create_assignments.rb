class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :event_id
      t.integer :mentor_id

      t.timestamps
    end
  end
end
