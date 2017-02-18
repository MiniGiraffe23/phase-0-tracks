def encrypt(string)
	string.tr!("z", "!")
	x = 0
	until x == string.length
		string[x] = string[x].next
		x += 1
	end

	string.tr!('!', ' ') 
	string.tr!('"', 'a')
end
	 
def decrypt(string)
	string.tr!(' ', '!')
	string.tr!('a', ' ')
	string2 = "abcdefghijklmnopqrstuvwxyz !"


	y = 0
	until y == string.length
		string[y] = string2[string2.index(string[y]) - 1]
		y += 1
	end
end
