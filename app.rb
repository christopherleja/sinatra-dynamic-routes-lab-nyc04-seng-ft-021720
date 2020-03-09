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
    answer = @number.to_i.times do @phrase
    end
    "#{answer} ".concat
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end
end