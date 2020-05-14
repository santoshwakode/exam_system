class CreateExamDetails < ActiveRecord::Migration
  def change
    create_table :exam_details do |t|
      t.integer :exam_id
      t.integer :teacher_id
      t.integer :student_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
