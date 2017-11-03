def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  new_cash = shop[:admin][:total_cash] += cash
  return new_cash
end

def pets_sold(shop)
  pets_sold = shop[:admin][:pets_sold]
  return pets_sold
end

def increase_pets_sold(shop, sales)
  pets_sold = shop[:admin][:pets_sold] += sales
  return pets_sold
end
