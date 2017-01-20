class AddPhysicianIdToSpeciman < ActiveRecord::Migration
  def change
    add_column :specimen, :physician_id, :integer
  end
end
