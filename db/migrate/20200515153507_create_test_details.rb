class CreateTestDetails < ActiveRecord::Migration
  def change
    create_table :test_details do |t|
      t.integer :test_id
      t.integer :student_id
      t.integer :question_detail_id
      t.text :answer
      t.integer :score
      t.string :status

      t.timestamps null: false
    end
  end
end
