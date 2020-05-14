class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.datetime :start_duration
      t.datetime :end_duration
      t.integer :exam_format_id

      t.timestamps null: false
    end
  end
end
