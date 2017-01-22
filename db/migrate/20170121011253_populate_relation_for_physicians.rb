#2/3 migration to allow physicians to have multiple hospitals
#populates relationship table
class PopulateRelationForPhysicians < ActiveRecord::Migration
  def change
    Physician.all.each do |p| 
    	#originally enclosed in an if statement
    	#changed to next statement at beginning after
    	#learning it is more optimized
      next if p.hospital_id.nil?
      HospitalPhysician.create!(physician_id: p.id,
                                hospital_id: p.hospital_id,
                                primary: true)
    end 
  end
end