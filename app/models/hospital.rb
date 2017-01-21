class Hospital < ActiveRecord::Base
  has_many :hospital_physicians
  has_many :physicians, through: :hospital_physicians
  has_many :hospital_analytes
  has_many :analytes, through: :hospital_analytes
end
