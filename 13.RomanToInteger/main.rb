# @param {String} s
# @return {Integer}
def roman_to_int(s)
	#ハッシュに文字と数字の関係性を保存
	roman_to_int={"I"=>1,
								"V"=>5,
								"X"=>10,
								"L"=>50,
								"C"=>100,
								"D"=>500,
								"M"=>1000}
	#変数の初期化
	i = 0
	sum = 0
	while i < s.length
		#現在の文字と次の文字を取得
		current_char = s[i]
		next_char = s[i+1]

		if i+1 < s.length && roman_to_int[current_char] < roman_to_int[next_char]
			target_num = roman_to_int[next_char] - roman_to_int[current_char]
			sum += target_num
			#次の文字を計算したのでインクリメント
			i += 1
		else
			sum += roman_to_int[current_char]
		end
		i += 1
	end
	return sum
end
