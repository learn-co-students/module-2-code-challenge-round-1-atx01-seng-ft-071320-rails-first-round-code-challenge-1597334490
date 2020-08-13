class HeroinePower < ActiveRecord::Migration[5.1]
  def change
    create_table :heroinepower do |t|
      t.string :heroine
      t.string :power
      t.string :strength

      t.timestamps
    end
  end
end
