class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.string :category
      t.integer :question_1
      t.integer :question_2

      t.timestamps
    end
  end
end
