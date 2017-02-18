

puts "Welcome to Werewolf, Inc. HR Department. Here is where we process new applicant questionnaires through our nifty Vampire Applicant Detection System!"

#Detrmining how man applicant questionairres there are so program knows how long to run the loop

puts "How many applicants will be processed today?"
applicants = gets.to_i

until applicants == 0 do

#New Applicant Questionnaire
#Questions used to determine if a new applicant is a vampire
puts "What is your name?"
name = gets.chomp

puts " How old are you?"
age = gets.to_i

puts "When were you born?"
birthyear = gets.to_i
#determine if applicant lied about his/her age
# allows us to take the current year and find the difference beteween birth year and today
#Will account for the possibility that a person might be younger than the outcome (by no more than one year)
#because birthday has not occurred yet

currentyear = 2017

if (currentyear - birthyear == age) || (currentyear - birthyear == age - 1)
		true_age = true
	else
		true_age - false
end

puts "Our company really like garlic bread, so we serve a lot in our cafeteria. Would you like us to order some for you? (yes/no)"
garlic = gets.chomp

if garlic == "yes" 
		garlic = true
	else
		garlic = false
end

puts " Do you plan on enrolling in the company's health insurance? (yes/no)"
insurance = gets.chomp

if insurance == "yes"
		insurance = true
	else
		insurance = false
end

#Initiate loop to determine if applicant has a sun allergy and set variable


puts " Please list all known allergies, one at a time. If you do not have any, or have finished listing them, please enter 'DONE'."
allergy = gets.chomp

while (allergy != "sunshine") && (allergy != "DONE")
		puts "Thank you! Please enter another allergy."
		allergy = gets.chomp
end

case object
	when (allergy == "sunshine")
		results = "Probably a vampire."

	
end

end


