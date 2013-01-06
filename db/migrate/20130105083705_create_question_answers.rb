class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.text :ans
      t.string :image
      t.boolean :is_correct, :default => false
      t.references :question

      t.timestamps
    end
    add_index :question_answers, :question_id
  end
end
