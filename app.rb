require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
    @aa = params[:name]
    "Goodbye, #{@aa}."
  end 
  
  get "/multiply/:num1/:num2" do 
    @f = params[:num1]
    @s = params[:num2]
    return @f.to_i*@s.to_i
  end 
end