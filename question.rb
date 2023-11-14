class Questions
  attr_accessor :input, :val_1, :val_2
  def initialize()
    @input
    @val_1 = rand(1..20) 
    @val_2 = rand(1..20) 

  end
  def new_question()
    
    puts "What is #{@val_1} + #{@val_2}?"
    @input = gets.chomp
    if @val_1 + @val_2 == @input
      puts "That's correct!"
    else
      puts "Are you serious???"
      
    end
  end

end