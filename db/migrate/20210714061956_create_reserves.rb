class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.references :user
      t.references :srote
      t.date :date
      t.time :time
      t.string :menu
      t.datetime :treatement_time
      t.string :stylist
      t.integer :total_amount
      t.integer :available_points
      t.integer :use_points
      t.integer :payment_amount

      t.timestamps
    end
  end
end
