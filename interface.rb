require_relative "frequencies.rb"
string = read_file("article.txt")
hash = frequencies(string)
puts hash.sort_by { |word, frequency| frequency }

