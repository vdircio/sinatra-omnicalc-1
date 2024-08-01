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

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @num_years = params.fetch("num_years").to_i
  @principal = params.fetch("principal").to_f
  @r = @apr / 100 / 12
  @pv = @principal
  @n = @num_years * 12
  @payment = ((@r*@pv)/(1- ((1+@r) ** (-1 * @n)))).to_fs(:currency)
  erb(:payment_results)
end

get('/random/new') do
  erb(:random)
end

get('/random/results') do
  @minimum = params.fetch("minimum").to_f
  @maximum = params.fetch("maximum").to_f
  @random_result = rand(@minimum...@maximum)
  erb(:random_results)
end
