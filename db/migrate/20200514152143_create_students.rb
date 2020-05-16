class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :educational_class

      t.timestamps null: false
    end
  end
end
