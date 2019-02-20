require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  get '/square/:number' do 
    @product = params[:number].to_i * params[:number].to_i
    @product.to_s
  end
  
  get '/say/:number/:phrase' do 
    @phrase = ''
<<<<<<< HEAD
    params[:number].to_i.times { @phrase += params[:phrase] }
=======
    params[:number].to_i.times { @phrase << params[:phrase] }
>>>>>>> bd084bf27ddac3baaba13ad260ad8114ea3ccbd0
    @phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
<<<<<<< HEAD
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      result = params[:number1].to_i / params[:number2].to_i  
    end
    result.to_s
=======
    "#{params[:word1]}%20#{params[:word2]}%20#{params[:word3]}%20#{params[:word4]}%20#{params[:word5]}"
  end
  get ':operation/:number1/:number2' do
    params[:number1] 
>>>>>>> bd084bf27ddac3baaba13ad260ad8114ea3ccbd0
  end
end