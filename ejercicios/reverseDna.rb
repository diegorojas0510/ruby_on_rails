# Problem
# In DNA strings, symbols 'A' and 'T' are complements of each other, as are 'C' and 'G'.

# The reverse complement of a DNA string s is the string sc formed by reversing the symbols of s, then taking the complement of each symbol (e.g., the reverse complement of "GTCA" is "TGAC").

# Given: A DNA string s of length at most 1000 bp.

# Return: The reverse complement sc of s.

str = "GATGGAACTTGACTACGTAAATT"

array = str.chars

array.each_with_index do |character, i|

    if character == 'A'
        array[i] = 'AT'               
    end

end


puts array.join("-")

values = [0,4,8,2,5,0,2,6]
average = values.sum / values.size.to_f
puts average