
#Define to do list class
class TodoList

	def initialize(arr)	
		@array = arr

	end 

	def get_items
		@array
	end

	def add_item(item)
		@array << item
	end

	def delete_item(item)
		@array.delete(item)
	end
end

 #list = TodoList.new #add a parameter
 #list.get_items("do the dishes")
