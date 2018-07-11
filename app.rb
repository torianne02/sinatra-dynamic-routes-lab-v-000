require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @backwards_name = params[:name].to_str.reverse!
    "#{@backwards_name}"
  end
end
