class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.integer :location_id
      t.string :fb_user_id
      t.text :fb_token
      t.text :fb_token_secret
      t.integer :grade
      t.integer :rank
      t.boolean :is_applicant
      t.boolean :is_addmin

      t.timestamps
    end
  end
end
