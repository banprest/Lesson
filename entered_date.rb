puts 'Введите дату в формате dd.mm.yyyy'

day = gets.chomp.to_i
months = gets.chomp
year = gets.chomp.to_i

leap = { '01' => 31, '02' => 60, '03' => 91, '04' => 121, '05' => 152, '06' => 182, '07' => 213, '08' => 244, '09' => 274, '10' => 305, '11' => 335, '12' => 366 }
not_leap = { '01' => 31, '02' => 59, '03' => 90, '04' => 120, '05' => 151, '06' => 181, '07' => 212, '08' => 243, '09' => 273, '10' => 304, '11' => 334, '12' => 365 }

if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
  leap.each do |l, i|
    if months == l
      puts i - day
    end
  end
else
  not_leap.each do |l, i|
    if months == l
      puts i - day
    end
  end
end
