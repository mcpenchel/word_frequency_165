# Read from the file (method)
# be able to read the file and return a string
# Remove punc. too Split the giant string into an array
# Create an empty hash
# Iterate the words and count them and store them into the hash
# Return the hash
# Sort the frequency of hash

def frequencies(string)
  hash = {}
  return hash if string == ""
  words = string.gsub(".",'')
  words = words.gsub(",",'')
  words = words.split
  words.each do |word|
    if hash.key?(word)
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  hash
end

def read_file(filepath)
  File.open(filepath).read.chomp
end
