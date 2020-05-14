class CreateTestDetails < ActiveRecord::Migration
  def change
    create_table :test_details do |t|
      t.integer :exam_format_id
      t.text :answer
      t.integer :exam_detail_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
