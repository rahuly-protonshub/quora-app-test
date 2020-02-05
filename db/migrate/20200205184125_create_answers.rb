class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :description
      t.integer :user_id
      t.integer :question_id
    end
  end
end
