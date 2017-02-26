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
	}
}
	
p birdybuns_zoo[:giraffes][:giraffe_names][:sick_giraffes]

#p birdybuns_zoo[:reptiles][:reptile_names]