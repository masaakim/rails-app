class AddPdfFileToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :pdf_file, :binary
  end
end
