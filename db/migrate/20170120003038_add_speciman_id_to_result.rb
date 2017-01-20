class AddSpecimanIdToResult < ActiveRecord::Migration
  def change
    add_column :results, :speciman_id, :integer
  end
end
