class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.string :location
      t.integer :capacity

      t.timestamps
    end
  end
end
