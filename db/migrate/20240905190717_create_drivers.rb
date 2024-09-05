class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
    add_reference :deliveries, :driver, null: false, foreign_key: true
  end
end
