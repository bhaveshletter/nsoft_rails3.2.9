class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :info
      t.string :image
      t.string :status
      t.integer :level

      t.timestamps
    end
  end
end
