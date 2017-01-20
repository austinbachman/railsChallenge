class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.string :patient_address
      t.string :patient_phone_number

      t.timestamps null: false
    end
  end
end
