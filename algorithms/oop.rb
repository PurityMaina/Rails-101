module Destructable 
	def destroy (anyobject)
		puts "I will destory the object"
	end
end

class User
	include Destructable
	attr_accessor:name, :email

	def initialize(name,email)
		@name = name
		@email = email
	end


	def self.identify_yourself
		puts "Hey i am a class method"
	end
		
	def run
		puts "Hey i am running"
	end
end



class Buyer < User 
	def run
		puts "I am not runnung and i am in the buyer class"
	end
end

class Seller < User #left arrow to show sub class from.

end

class Admin < User

end

user = User.new("Purity","puritymina001@gmail.com")
puts "My user's name is #{user.name} and her email is #{user.email}"
user.name = "Jane"
user.email = "janedoe@example.com"
puts "My user's new name is #{user.name} and her email is #{user.email}"

buyer1 = Buyer.new("Jane", "janedoe@example.com")
buyer1.run #inheritance

seller1 = Seller.new("Purity2","puritymina2001@gmail.com")
seller1.run #inheritance

admin1 = Admin.new("Purity3","puritymina3001@gmail.com")
admin1.run #inheritance

User.identify_yourself # no need to run an instance of user you can directly call the class User

puts Buyer.ancestors #ancestry; still on inheritance


user = User.new("mashrur","mashrur@example.com")
user.destroy("myname")

