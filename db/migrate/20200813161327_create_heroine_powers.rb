class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.integer :powers_id
      t.integer :heroines_id
      t.string :strength

      t.timestamps
    end
  end
end
