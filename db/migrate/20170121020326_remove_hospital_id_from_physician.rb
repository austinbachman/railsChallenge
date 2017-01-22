#3/3 migration to allow physicians to have multiple hospitals
#remove direct relationship to hospital from physician
class RemoveHospitalIdFromPhysician < ActiveRecord::Migration
  def change
    remove_column :physicians, :hospital_id, :integer
  end
end
