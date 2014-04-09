class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :assignment_id
      t.text :q_1
      t.text :q_2
      t.text :q_3
      t.text :q_4
      t.text :q_secret

      t.timestamps
    end
  end
end
