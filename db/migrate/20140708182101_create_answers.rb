class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :caption
      t.integer :user_id
      t.integer :question_id
      t.string :pic

      t.timestamps
    end
  end
end
