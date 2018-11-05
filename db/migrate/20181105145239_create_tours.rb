class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.integer :capacity
      t.string :category
      t.float :longitude
      t.float :latitude
      t.time :start_time
      t.time :end_time
      t.date :date
      t.string :location
      t.integer :price_euro
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
