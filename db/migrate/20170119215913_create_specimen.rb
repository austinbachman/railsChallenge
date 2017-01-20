class CreateSpecimen < ActiveRecord::Migration
  def change
    create_table :specimen do |t|
      t.string :sample_name
      t.date :date_received
      t.string :sample_type

      t.timestamps null: false
    end
  end
end
