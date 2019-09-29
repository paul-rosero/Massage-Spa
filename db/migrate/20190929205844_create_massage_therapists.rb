class CreateMassageTherapists < ActiveRecord::Migration
  def change
    create_table :massage_therapists do |t|
      t.string "name"
      t.string "modalities"
      t.string "bio"
      t.integer "massage_spa_id"

      t.timestamps null: false
    end
  end
end
