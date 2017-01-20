class Hospital < ActiveRecord::Base
  has_many :physicians
  has_many :hospital_analytes
  has_many :analytes, through: :hospital_analytes
end
