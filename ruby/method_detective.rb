# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".insert (2,"o") will insert a o into the second space of the string.
# => “zoom”
p "zom".insert(2, "o")
# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<upcase>
p "Stop! You're under arrest!".upcase

# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<+ ____.to_s> adds one string to another
#"the usual".ljust (18, " suspects") make the string equal to 18 characters and add suspects
#a = "suspects" a.prepend("the usual ") will add suspects to the end of the original string

p "the usual" + " suspects".to_s
p "the usual".ljust(18, " suspects")
a = "suspects"
p a.prepend("the usual ")

#=> "the usual suspects"

# " suspects".rjust(18, "the usual") makes the string equal to 18 characters and adds the usual to the right of the original string
p " suspects".rjust(18, "the usual")

# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter".chomp("r")

# "The mystery of the missing first letter".<???>
p "The mystery of the missing first letter".sub("T", "")
p "The mystery of the missing first letter"[1..-1]

# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

# "z".<???>
p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# The .ord method returns the position of z on the ASCII table.
# "How many times does the letter 'a' appear in this string?".<???>
p "How many times does the letter 'a' appear in this string?".count("a")

# => 4

