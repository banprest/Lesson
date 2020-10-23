alphabet = Hash[[('a'..'z').to_a, (1..26).to_a].transpose]
alphabet.select! { |letter, number| ['a', 'e', 'i', 'o', 'u', 'y'].include?(letter) }
puts alphabet