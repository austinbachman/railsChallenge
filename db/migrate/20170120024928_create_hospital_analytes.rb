class CreateHospitalAnalytes < ActiveRecord::Migration
  def change
    create_table :hospital_analytes do |t|
      t.reference :hospital
      t.reference :analyte

      t.timestamps null: false
    end
  end
end
