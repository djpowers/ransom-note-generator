puts 'Specify a file path'
path = gets.chomp
generated_text = ""
File.open(path, 'r') do |file|
  file.read.split(//).each do |char|
    value = rand(2)
    if value == 0
      generated_text << char.swapcase
    else
      generated_text << char
    end
  end
  puts generated_text
end