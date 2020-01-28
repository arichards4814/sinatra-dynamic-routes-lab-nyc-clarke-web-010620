require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/:phrase" do 
      @number = params[:number].to_i
      @phrase = params[:phrase]
      full_phrase = ""
      @number.times {full_phrase = full_phrase + @phrase}
      full_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    final_phrase = ""
    params.each do |word|
      final_phrase += "#{word[1]} "
    end
    final_phrase.strip + "."
  end

  get "/:operation/:number1/:number2" do
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      @operation = params[:operation].to_s

      if @operation == "add"
        "#{@number1 + @number2}"
      elsif @operation == "subtract"
        "#{@number1 - @number2}"
      elsif @operation == "divide"
        "#{@number1 / @number2}"
      elsif @operation == "multiply"
        "#{@number1 * @number2}"
      end
  end


end