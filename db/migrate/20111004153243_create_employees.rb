class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :active
      t.timestamps
    end
  end
end
