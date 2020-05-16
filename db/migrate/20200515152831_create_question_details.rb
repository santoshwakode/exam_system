class CreateQuestionDetails < ActiveRecord::Migration
  def change
    create_table :question_details do |t|
      t.integer :exam_id
      t.text :question
      t.string :question_type

      t.timestamps null: false
    end
  end
end
