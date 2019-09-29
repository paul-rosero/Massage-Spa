class CreateMassageSpas < ActiveRecord::Migration
  def change
    create_table :massage_spas do |t|
      t.string "email"
      t.string "username"
      t.string "password_digest"
      t.string "name"

      t.timestamps null: false
    end
  end
end
