require 'sinatra'
# require_relative 'addition.rb'

get '/' do  

	erb :name
	
end

post '/name' do 
	user_name = params[:user_name]
	erb :age, :locals => {:user_name => user_name}

end

post '/age' do
	user_name = params[:user_name]
	user_age = params[:user_age]
	erb :favorite, :locals => {:user_name => user_name, :user_age => user_age } 
end

post '/favorite' do
	user_name = params[:user_name]
	user_age = params[:user_age].to_i
	user_num1 = params[:user_num1].to_i
	user_num2 = params[:user_num2].to_i
	user_num3 = params[:user_num3].to_i
	sum = (user_num1 + user_num2 + user_num3)

	results = 'less than'

		if (sum > user_age)
				results = 'greater than'
		elsif (sum == user_age)
				results = 'equal to'
		else
				results
		end

	#numbers = params[:favorite].split(",")map { |s| s.to_i}.inject(0 :+)


	# favorite_total = sum(user_num1, user_num2, user_num3) 
	# results = difference(user_age, favorite_total)

erb :results, :locals => {:user_name => user_name, :user_age => user_age, :user_num1 => user_num1, :user_num2 => user_num2, :user_num3 => user_num3, :sum => sum, :results => results}
end
# Favorite Number Kata:
# Create a app using Sinatra which will accept/pass variables using locals. Create 4 views
# 1. Ask the user their name
# 2. Call the user by their name, asking the user for their age
# 3. Call the user by their name, asking the user for their 3 favorite numbers
# 4. Call the user by their name, providing the user their age, 3 favorite numbers, the total of the the user's 3 favorite numbers and if the total is greater than or less than the user's age  