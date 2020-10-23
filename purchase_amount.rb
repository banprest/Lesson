buyer = {}
sum = 0
loop do
  puts 'Введите название товара'
  item = gets.chomp
  if (item == 'стоп')
    puts buyer
    puts "Итогговая сумма в корзине #{sum}"
    break
  else
    puts 'Введите цену за товар'
    cell = gets.chomp.to_f
    puts 'Введите количество товара'
    quantitty = gets.chomp.to_f
    buyer[item.to_sym] = cell, quantitty
    sum = sum + cell * quantitty
  end
end