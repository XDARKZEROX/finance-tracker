#model
class Stock < ApplicationRecord
  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    price = strip_commas(looked_up_stock.latest_price)
    new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: price) 
  rescue => exception #rescue and begin sirven como try catch
    return nil
  end

  def self.strip_commas(number)
    number.to_s.gsub(',', '')
  end
end
