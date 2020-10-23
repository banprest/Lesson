puts 'Введите дату в формате dd.mm.yyyy'

day = gets.chomp.to_i
months = gets.chomp
year = gets.chomp.to_i

ldays = [31,29,31,30,31,30,31,31,30,31,30,31]
not_ldays = [30,28,31,30,31,30,31,31,30,31,30,31]
count = 0
lep = 31
nlep = 31
leap_days = [31]
not_leap_days= [31]
loop do
  lep = lep + ldays[count + 1]
  nlep = nlep + not_ldays[count + 1]
  leap_days << lep
  not_leap_days << nlep
  count += 1
  break if count == 11
end

leap = Hash[[('01'..'12').to_a, leap_days].transpose]
not_leap = Hash[[('01'..'12').to_a, not_leap_days].transpose]

if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
  leap.each do |month, days|
    if months == month
      puts days - day
    end
  end
else
  not_leap.each do |month, days|
    if months == month
      puts days - day
    end
  end
end
