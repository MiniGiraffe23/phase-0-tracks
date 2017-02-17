#Employee Questionnaire
puts "What is your name?"
name = gets.chomp

puts " How old are you?"
age = Integer(gets.chomp)

puts "When were you born?"
birth = gets.chomp

puts " Would you like us to order some garlic for you?"
garlic = gets.chomp

puts " Do you plan on enrolling in the company's health insurance?"
insurance = gets.chomp


wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

p wolves_like_garlic && wolves_like_garlic
p wolves_like_garlic || vampires_like_garlic
p wolves_like_garlic && vampires_like_garlic
p wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
p (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
p vampires_like_garlic
p !vampires_like_garlic
p !(wolves_like_sunshine && wolves_like_garlic)

