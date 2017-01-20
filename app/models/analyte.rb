class Analyte < ActiveRecord::Base
  has_many :results
  has_many :hospital_analytes
  has_many :hospitals, through: :hospital_analytes
end