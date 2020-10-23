number = [0]
num = 1  
loop do
  fibonacci = (((1 + Math.sqrt(5))/2)**num - ((1 - Math.sqrt(5))/2)**num)/ Math.sqrt(5)
  break if fibonacci >= 100
  num += 1
  number << fibonacci.to_i
end
puts number
