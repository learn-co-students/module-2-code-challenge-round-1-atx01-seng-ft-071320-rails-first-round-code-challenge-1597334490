class CreateJoinTableHeroinePower < ActiveRecord::Migration[5.1]
  def change
    create_table :heroinepowers, :id => false do |t|
      t.integer :power_id
      t.integer :heroine_id
      t.string :strength
    end
  end
end
