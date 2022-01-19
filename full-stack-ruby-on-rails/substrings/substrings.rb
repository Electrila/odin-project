def substrings(text, dict)
  result = Hash.new(0)
  text_lowercase = text.downcase

  dict.each do |key|
    count = text_lowercase.scan(key).count
    result[key] = count unless count == 0
  end
  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)