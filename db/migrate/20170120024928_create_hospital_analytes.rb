class CreateHospitalAnalytes < ActiveRecord::Migration
  def change
    create_table :hospital_analytes do |t|
      t.references :hospital
      t.references :analyte

      t.timestamps null: false
    end
  end
end
