class RemovePdfFilePathFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :pdf_file_path, :text
  end
end
