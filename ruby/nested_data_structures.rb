#3.4 Assignment
=begin
-Build a nested data structure to represent a real-world construct. 
-You can choose the construct: 
--Is it a highway full of cars full of people? 
--A classroom full of desks full of supplies? 
--A fashion show with multiple runways featuring multiple models? 
-Build something that will use a mix of hashes and arrays.
-Print a few individual pieces of deeply nested data
-Use multiple indexes and hash keys to access the nested items
-Demonstrate a few different types of access.
=end

#Exhibits in a Zoo
#What will we need:
#Zoo name, different exhibit names within the zoo, animals/attractions within those exhibits

birdybuns_zoo = {

	exhibits: [
		"Magnificient Reptiles",
		"Gallant Giraffes",
		"Ferocious Felines"
		],

	reptiles: {
		exhibit_name: "Magnificent Reptiles",
		reptile_count: 6,
		reptile_names: [
			"Scaley",
			"Slippery Joe",
			"Bob the Boa",
			"Curly Sue",
			"Demon Eyes",
			"Silent Moe"
		]
	},	
#p birdybuns_zoo[:reptiles][:reptile_names] test during bulding to show that nested data could be called

	giraffes: {
		exhibit_name: "Gallant Giraffes",
		giraffe_info: {
			total_giraffe: 6,
			giraffe_sick: 2,
		},
		giraffe_names: {
			giraffes_on_display: [
				"Betty",
				"Norman",
				"Long-neck John",
				"Bean"
			],
			sick_giraffes: [
				"Billy Bob",
				"Jean"
			]
		}		
	},
	tigers: {
		exhibit_name: "Ferocious Felines",
		tiger_info: {
			tiger_count: 4,
			tiger_types: [
				"Bengal",
				"Sumatran",
				"Malayan"
			]
		},
		tiger_names: {
			"Bengal" => "Lucy",
			"Sumatran" => ["Fierce Kitty", "Tito"],
			"Malayan" => "Hank"

		}
	}
}

#Tests ran thorughout building data structure to make sure it continued to work as new parts were added
#p birdybuns_zoo[:tigers][:tiger_names]["Sumatran"] worked perfectly 
#p birdybuns_zoo[:tigers][:tiger_info][:tiger_types] just a test
#p birdybuns_zoo[:giraffes][:giraffe_names][:sick_giraffes] just a test
#p birdybuns_zoo[:reptiles][:reptile_names] just a test
puts "Welcome to Birdybun's Zoo!"

puts "Some of our exhibits include: \"#{birdybuns_zoo[:exhibits]}\"."

puts " \"#{birdybuns_zoo[:tigers][:tiger_info][:tiger_types].last}\" is one type of tiger you will see in the Ferocious Felines Exhibit!"
puts "Our \"#{birdybuns_zoo[:tigers][:exhibit_name]}\" Exhibit is home to \"#{birdybuns_zoo[:tigers][:tiger_info][:tiger_count]}\" tigers!"
puts "Their types and names are \"#{birdybuns_zoo[:tigers][:tiger_names]}\"."

puts ""
puts ""

puts "Our \"#{birdybuns_zoo[:giraffes][:exhibit_name]}\" Exhibit is home to \"#{birdybuns_zoo[:giraffes][:giraffe_names][:giraffes_on_display]}\" who are on display, and \"#{birdybuns_zoo[:giraffes][:giraffe_names][:sick_giraffes]}\" who are currently out sick :-( !"

puts "Please continue to look around and let us know if you have any questions! Thanks for visiting the zoo today!"