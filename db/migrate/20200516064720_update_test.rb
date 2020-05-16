class UpdateTest < ActiveRecord::Migration
  def change
  	add_column :tests, :status, :string
  end
end
