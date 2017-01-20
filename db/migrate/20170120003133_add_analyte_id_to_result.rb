class AddAnalyteIdToResult < ActiveRecord::Migration
  def change
    add_column :results, :analyte_id, :integer
  end
end
