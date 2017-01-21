class PopulateRelationForPhysicians < ActiveRecord::Migration
  def change
    Physician.all.each do |p| 
      next if p.hospital_id.nil?
      HospitalPhysician.create!(physician_id: p.id,
                                hospital_id: p.hospital_id,
                                primary: true)
    end 
  end
end