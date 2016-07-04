restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price * 1.1
end
puts restaurant_menu
