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
    @phrase = params[:phrase]
    answer = " "

    @num.times do
      answer += @phrase
    end
    "#{answer}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @combined_str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@combined_str}"
  end
end
