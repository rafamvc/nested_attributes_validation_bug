class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :number
      t.references :employee

      t.timestamps
    end
    add_index :badges, :employee_id
  end
end
