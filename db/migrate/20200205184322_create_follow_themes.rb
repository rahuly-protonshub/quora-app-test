class CreateFollowThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_themes do |t|
      t.integer :user_id
      t.integer :theme_id
    end
  end
end
