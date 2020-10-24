puts 'Введите дату в формате dd.mm.yyyy'

day = gets.chomp.to_i
months = gets.chomp.to_i
year = gets.chomp.to_i

ldays = [31,28,31,30,31,30,31,31,30,31,30,31]
if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
  ldays[1] = 29
end
puts ldays.take(months).sum - day

