class CreateMassageTherapists < ActiveRecord::Migration
  def change
    create_table :massage_therapists do |t|

      t.timestamps null: false
    end
  end
end
