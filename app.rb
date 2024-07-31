require "sinatra"
require "sinatra/reloader"

# Route to display the form
get("/") do
  erb(:square)
end

# Route to process the form and display the result
get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @number = params.fetch("number").to_f
  @squared = @number ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_f
  @square_rooted = @user_number ** 0.5
  erb(:square_root_results)
end
