class CreateHospitalPhysician < ActiveRecord::Migration
  def change
    create_table :hospital_physicians do |t|
      t.references :hospital, index: true, foreign_key: true
      t.references :physician, index: true, foreign_key: true
      t.boolean :primary
    end
  end
end
