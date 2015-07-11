class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour
      t.string :place
      t.text :description
      t.float :price
      t.date :date
      t.string :duration
      t.integer :reservations
      t.text :reviews

      t.timestamps null: false
    end
  end
end
