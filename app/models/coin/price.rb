class Coin::Price < ApplicationRecord
  def self.parse_poloniex
    price = self.create(parsed_at: Time.zone.now)

    response = HTTParty.get('https://poloniex.com/public?command=returnTicker').parsed_response

    response.each do |k, v|
      coin = Coin.find_or_create_by(name: k)

      Coin::PriceDatum.create(coin_id: coin.id, price_id: price.id, last: v['last'].to_f, lowest_ask: v['lowestAsk'].to_f, highest_bid: v['highestBid'].to_f, base_volume: v['baseVolume'], quote_volume: v['quoteVolume'], highest_day: v['high24hr'], lowest_day: v['low24hr'])
    end
  end
end
