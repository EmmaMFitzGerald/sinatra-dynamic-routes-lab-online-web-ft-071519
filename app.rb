require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name  = params[:name]
    @name.reverse 
  end 
  
  get '/square/:number' do
    @number = params[:number]
    "#{params[:number].to_i * params[:number].to_i}"
  end
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times puts "#{@phrase}\n"
  end 
end