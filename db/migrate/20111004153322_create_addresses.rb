class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.references :employee

      t.timestamps
    end
    add_index :addresses, :employee_id
  end
end
