require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @backwards_name = params[:name].reverse!
    "#{@backwards_name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @num_squared = params[:number].to_i.pow(params[:number].to_i)
    "#{@num_squared.to_s}"
  end
end
