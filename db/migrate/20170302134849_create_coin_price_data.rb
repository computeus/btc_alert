class CreateCoinPriceData < ActiveRecord::Migration[5.0]
  def change
    create_table :coin_price_data do |t|
      t.integer :price_id
      t.integer :coin_id
      t.decimal :last, precision: 24, scale: 8
      t.decimal :lowest_ask, precision: 24, scale: 8
      t.decimal :highest_bid, precision: 24, scale: 8
      t.decimal :base_volume, precision: 24, scale: 8
      t.decimal :quote_volume, precision: 24, scale: 8
      t.decimal :highest_day, precision: 24, scale: 8
      t.decimal :lowest_day, precision: 24, scale: 8

      t.timestamps
    end
    add_index :coin_price_data, :price_id
    add_index :coin_price_data, :coin_id
  end
end
