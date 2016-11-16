class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.integer :source_id, index: true
      t.integer :target_id, index: true
      t.timestamps
    end
  end
end
