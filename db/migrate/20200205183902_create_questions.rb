class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :user_id
      t.integer :theme_id
    end
  end
end
