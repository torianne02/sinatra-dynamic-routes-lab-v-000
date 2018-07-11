require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @backwards_name = params[:name].reverse!
    "#{@backwards_name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @num_squared = @num * @num
    "#{@num_squared}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @repeated_array = []
    @answer = @num.times {|i| @repeated_array << params[:phrase]}
    @answer.to_s
    "#{@answer}"
  end
end
