class CreateJoinTableHeroinePower < ActiveRecord::Migration[5.1]
  def change
    create_join_table :heroines, :powers do |t|
       t.index :heroine_id
       t.index :power_id
       t.string :strength 
    end
  end
end
