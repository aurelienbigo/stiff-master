module GuitarsHelper
  def formated_price(price)
    price.format(:symbol_position => :after, :thousands_separator => " ", :decimal_mark => ",")
  end
end
