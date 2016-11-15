class CreateNests < ActiveRecord::Migration[5.0]
  def change
    create_table :nests do |t|
      t.string :nest
      t.integer :parent_id, :null => true, :index => true
      t.integer :lft, :null => false, :index => true
      t.integer :rgt, :null => false, :index => true
      t.timestamps
    end
  end
end
