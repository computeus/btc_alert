class CreateCoinPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :coin_prices do |t|
      t.datetime :parsed_at

      t.timestamps
    end
    add_index :coin_prices, :parsed_at
  end
end
