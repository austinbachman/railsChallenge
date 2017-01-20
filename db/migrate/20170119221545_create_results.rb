class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :result_value
      t.datetime :reported_at

      t.timestamps null: false
    end
  end
end
