class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :borrowed_on
      t.date :returned_on
      t.integer :movie_id

      t.timestamps
    end
  end
end
