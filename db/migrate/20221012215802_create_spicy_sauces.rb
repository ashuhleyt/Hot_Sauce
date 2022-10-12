class CreateSpicySauces < ActiveRecord::Migration[5.2]
  def change
    create_table :spicy_sauces do |t|
      t.string :name
      t.float :spice_level
      t.integer :calories
      t.boolean :made_today

      t.timestamps
    end
  end
end
