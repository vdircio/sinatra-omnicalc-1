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
