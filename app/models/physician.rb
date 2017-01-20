class Physician < ActiveRecord::Base
  has_many :specimen
  belongs_to :hospital
  has_many :patients

  validates :physician_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, 
    message: "bad format" }

  def result_analytes
    self.specimen.includes(results: :analyte)
                 .where(results: {reported_at: DateTime.new(2014,1,1)..DateTime.new(2014,4,1)})
                 .pluck('distinct analytes.analyte_name')
  end
end