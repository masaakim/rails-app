class CreatePrincipals < ActiveRecord::Migration
  def change
    create_table :principals do |t|
      t.text :message

      t.timestamps
    end
  end
end
