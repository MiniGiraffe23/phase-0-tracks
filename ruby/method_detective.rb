# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

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

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4