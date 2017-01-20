class CreateAnalytes < ActiveRecord::Migration
  def change
    create_table :analytes do |t|
      t.string :analyte_name
      t.string :result_range

      t.timestamps null: false
    end
  end
end
