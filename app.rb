require 'sinatra'
require_relative 'ex_1.rb'

get '/' do  

	erb :name
	
end

post '/name' do 
	user_name = params[:name_input]
	erb :age, :locals => {:user_name => user_name}

end

post '/age' do
	age_input = params[:age_input]
	user_name = params[:user_input]
	erb :favorite, :locals => {:age_input => age_input}
end

# post '/favorite' do
# 	favorite_input = params[:favorite_input]
# 	age_input = params[:age_input]
# 	user_name = params[:user_input]
# end
# Favorite Number Kata:
# Create a app using Sinatra which will accept/pass variables using locals. Create 4 views
# 1. Ask the user their name
# 2. Call the user by their name, asking the user for their age
# 3. Call the user by their name, asking the user for their 3 favorite numbers
# 4. Call the user by their name, providing the user their age, 3 favorite numbers, the total of the the user's 3 favorite numbers and if the total is greater than or less than the user's age  