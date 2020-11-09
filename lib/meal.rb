class Meal

  @@all = []
  attr_accessor :waiter, :customer, :total, :tip

  def initialize(waiter, customer = nil, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    save
  end  

  def save
    @@all << self
  end  


  def self.all
    @@all
  end  


end