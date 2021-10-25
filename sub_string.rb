require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
    array_match = []
    string.downcase!
    strings = string.split(/\W+/)
    strings.each do |i|
        array.each do |j|
            if i.include? j
                array_match.push(j)
            end
        end
    end
    match_hash = Hash.new(0)
    array_match.each do |v|
        match_hash[v] += 1
    end
    match_hash
end

p substrings("What's the lowdown horngo?", dictionary)
