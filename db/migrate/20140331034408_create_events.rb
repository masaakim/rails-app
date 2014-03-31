class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.string :url
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :place
      t.string :place_url
      t.integer :staff_count
      t.boolean :is_closed

      t.timestamps
    end
  end
end
