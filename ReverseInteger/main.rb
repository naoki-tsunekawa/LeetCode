# @param {Integer} x
# @return {Integer}
def reverse(x)
	if x.positive?
			#正数
			disp = x.to_s.reverse.to_i
	else
			#負数
			disp = x.to_s.reverse.to_i * -1
	end
	if disp > 2147483648 || disp < -2147483648
			disp = 0
	end
	return disp
end

## positive? negative?
# posi_num = 1.positive?
# puts posi_num

# nega_num = -22.positive?
# puts nega_num

# zero = 0.positive?
# puts zero


# # reverse関数
# puts "あいうえお".reverse
