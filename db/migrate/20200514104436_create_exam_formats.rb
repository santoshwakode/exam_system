class CreateExamFormats < ActiveRecord::Migration
  def change
    create_table :exam_formats do |t|
      t.string :question
      t.string :question_type
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
