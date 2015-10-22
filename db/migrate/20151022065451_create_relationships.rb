class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :stalker_id
      t.integer :victim_id

      t.timestamps null: false
    end

    add_index :relationships, :stalker_id
    add_index :relationships, :victim_id
    add_index :relationships, [:stalker_id, :victim_id], unique: true
  end
end
