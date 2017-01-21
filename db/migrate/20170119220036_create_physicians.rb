class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :physician_name
      t.string :physician_phone_number
      t.string :physician_type
      t.references :hospital
      t.timestamps null: false
    end
  end
end
