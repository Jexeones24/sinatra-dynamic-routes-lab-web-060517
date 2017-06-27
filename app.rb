require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversename = params[:name]
    "#{@reversename.reverse!}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    "#{@square ** 2}.to_s"
  end

  get '/say/:number/:phrase' do
    @phrase =  params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]+ "."
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    #binding.pry
    @operation = nil
    case
    when params[:operation] == "add"
      @operation = params[:number1].to_i + params[:number2].to_i
    when params[:operation] == "subtract"
      @operation = params[:number1].to_i - params[:number2].to_i
    when params[:operation] == "multiply"
      @operation = params[:number1].to_i * params[:number2].to_i
    when params[:operation] == "divide"
      @operation = params[:number1].to_i / params[:number2].to_i
    end
    "#{@operation}.to_s"
  end


end
