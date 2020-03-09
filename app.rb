require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end
  
  get '/square/:number'do 
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    answer = @number.to_i.times do puts phrase
    "#{answer}".join
    end
  end
end