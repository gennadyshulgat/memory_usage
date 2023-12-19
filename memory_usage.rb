# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите число или слово размер которого нужно определить"

string = STDIN.gets.chomp


  if string.is_a?(Numeric)
    puts string.size
  else
    puts string.bytesize
  end


