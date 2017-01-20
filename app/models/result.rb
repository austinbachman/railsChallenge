class Result < ActiveRecord::Base
  belongs_to :speciman
  belongs_to :analyte

  def self.reno_results_helper
    self.joins(speciman: :physician)
    .where("physicians.physician_phone_number LIKE '775%'")
    .select("results.*")
  end

  def reno_results
    self.class.reno_results_helper
  end

end