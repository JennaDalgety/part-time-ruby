def price_of_gold ounces
  puts (1336 * ounces) #assuming cost of gold is $1,336/ounce
end

def price_of_gold_from_pounds pounds
  ounces = pounds * 16
  price_of_gold(ounces)
end

price_of_gold_from_pounds(10)