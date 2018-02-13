class CreateParkingHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_histories, primary_key: :id do |t|
      t.string :address, null: false, default: ''
      t.string :date, null: false, default: ''
      t.decimal :duration, null: false, default: 0.0
      t.decimal :paidPrice, null: false, default: 0.0
      t.timestamps
    end
  end
end
