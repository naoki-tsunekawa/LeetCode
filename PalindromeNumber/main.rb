# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
	#positive? negative?
	# if x > 2147483648 || x <  -2147483648
	# 		return false
	# end
	if x.negative?
			return false
	else
			if x.to_s.reverse == x.to_s
					return true
			else
					return false
			end
	end
end
