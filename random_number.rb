class Random_number 
  attr_accessor :value
  def initialize()
    @value = rand(1..20)
  end
end