


puts "Welcome to Werewolf, Inc. HR Department. Here is where we process new applicant questionnaires through our nifty Vampire Applicant Detection System!"

#Detrmining how man applicant questionairres there are so program knows how long to run the loop

puts "How many applicants will be processed today?"
applicants = gets.to_i

until applicants == 0 

	puts "Applicants remanining: #{applicants}"

#New Applicant Questionnaire
#Questions used to determine if a new applicant is a vampire
puts "What is your name?"
name = gets.chomp

	if name == "Drake Cula" || name == "Tu Fang"
			known_vampire = true
		else
			known_vampire = false
	end


puts " How old are you?"
age = gets.to_i

puts "When were you born?"
birthyear = gets.to_i

#determine if applicant lied about his/her age
# allows us to take the current year and find the difference beteween birth year and today
#Will account for the possibility that a person might be younger than the outcome (by no more than one year)
#because birthday has not occurred yet

	x = 1

	if age == (2017 - (birthyear - x)) or age == (2017 - birthyear)
		true_age = true
		else
		true_age = false
	end

#determine whether or not an applicant like garlic 
puts "Our company really like garlic bread, so we serve a lot in our cafeteria. Would you like us to order some for you? (yes/no)"
garlic = gets.chomp

	if garlic == "yes"
		 wants_garlic = true
		else
	 	 wants_garlic = false
	end

#Determine whether or not an applicant wants insurance, if not they could be immortal
puts " Do you plan on enrolling in the company's health insurance? (yes/no)"
insurance = gets.chomp

	if insurance == "yes"
		wants_insurance = true
	else
		wants_insurance = false
	end

#Initiate loop to determine if applicant has a sun allergy and set variable

puts " Please list all known allergies, one at a time. If you do not have any, or have finished listing them, please enter 'DONE'."
allergy = gets.chomp

  while (allergy != "DONE") do
          if (allergy == "sunshine") 
           break 
           
          elsif (allergy != "sunshine")
            puts "Please list another allergy. If no other allergies exist, enter 'DONE'."
            allergy = gets.chomp
          end
      end

    #Determine which results will be printed based upon the input data received from the above questionnaire

	if known_vampire == true
		results = "Definitely a vampire!"

	elsif true_age == true && (wants_garlic == true || wants_insurance == true)
		results = "Probably not a vampire."

	elsif true_age == false && wants_garlic == false && wants_insurance == false
		results = "Almost certainly a vampire."

	elsif true_age == false && (wants_garlic == false || wants_insurance == false)
		results = "Probably a vampire."

	else 
		results = "Might be a vampire, might be a werewolf, might be a unicorn...who knows?? Results inconclusive." 
	
	end
puts results 
applicants -= 1
end

puts "No more applicants for today."
puts "Actually, never mind! What do these questions have to do with anything?! Let's all be friends!"
