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
    @repeat_array = []
    @answer = @num.times {|i| @repeat_array << params[:phrase]}
    "#{@answer}"
  end
end
