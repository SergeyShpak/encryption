require "digest"
puts "Введите фразу для шифрования"
phrase = STDIN.gets.encode("UTF-8").chomp
puts "Каким методом зашифровать:
      1. MD5
      2. SHA-1"
encryption_methos = 0
until encryption_methos == 1 or encryption_methos == 2 do
  encryption_methos = gets.to_i
end
puts "Вот что получилось:"
case encryption_methos
when 1
   puts Digest::MD5.hexdigest(phrase)
when 2
  puts Digest::SHA1.hexdigest(phrase)
end