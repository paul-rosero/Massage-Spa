class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string "name"
      t.string "address"
      t.string "medical_history"
      t.integer "massage_spa_id"

      t.timestamps null: false
    end
  end
end
