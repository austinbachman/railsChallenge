class Result < ActiveRecord::Base
  belongs_to :speciman
  belongs_to :analyte

  #joins physician table from related speciman
  #find all physicians with # starting with 775
  #return results reported by those physicians
  def self.reno_results_helper
    self.joins(speciman: :physician)
    .where("physicians.physician_phone_number LIKE '775%'")
    .select("results.*")
  end

  #call helper function
  def reno_results
    self.class.reno_results_helper
  end
end