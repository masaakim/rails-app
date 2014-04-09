class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.text :pdf_file_path

      t.timestamps
    end
  end
end
