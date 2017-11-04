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

def stock_count(shop)
  count = shop[:pets].length
return count
end

def pets_by_breed(shop, breed)
  number_of_breed = []
  for pet in shop[:pets]
     if (breed == pet[:breed])
       number_of_breed << pet
     end
  end
  return number_of_breed
end

def find_pet_by_name (shop, name)
  pets = shop[:pets]
  for pet in pets
     if (name == pet[:name])
       return pet
     end
  end
  return nil
end

def remove_pet_by_name (shop, name)
  pets = shop[:pets]
  for pet in pets
     if (name == pet[:name])
       pets.delete(pet)
     end
  end
end

def add_pet_to_stock (pet, new_pet)
  pet[:pets].unshift(new_pet)
  return pet[:pets]
end

def customer_pet_count(customer)
return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer[:pets]
end

def customer_can_afford_pet(customer, pet)
  afford = customer[:cash] >= pet[:price] ? true : false
  return afford
end

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil || customer_can_afford_pet(customer, pet) == false
  else
    customer[:pets] << pet
    increase_pets_sold(shop, 1)
    add_or_remove_cash(shop, pet[:price])
  end
end
