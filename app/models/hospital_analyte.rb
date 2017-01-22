#association table between hospitals and analytes
class HospitalAnalyte < ActiveRecord::Base
	belongs_to :hospital
	belongs_to :analyte
end