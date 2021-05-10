# @param {String} s
# @return {Boolean}
def is_valid(s)

	brackets = []

	s.each_char do |c|
			case c
			when "(", "{", "["
					brackets.push(c)
			when ")"
					return false if brackets.pop() != '('
			when "}"
					return false if brackets.pop() != '{'
			when "]"
					return false if brackets.pop() != '['
			end
	end
	return brackets.empty?
end


# example1
puts is_valid("()")
# example2
puts is_valid("()[]{}")
# example3
puts is_valid("(]")
# example4
puts is_valid("([)]")
# example5
puts is_valid("{[]}")
