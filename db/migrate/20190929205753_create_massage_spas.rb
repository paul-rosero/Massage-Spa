class CreateMassageSpas < ActiveRecord::Migration
  def change
    create_table :massage_spas do |t|

      t.timestamps null: false
    end
  end
end
