class Waiter

  attr_accessor :name, :years_of_exp
  @@all = []

  def initialize(name, years_of_exp)
    @name = name
    @years_of_exp = years_of_exp
    save 
  end  

  def save
    @@all << self
  end  

  def self.all
    @@all
  end  

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end  

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end  

  def best_tipper
    tips = meals.collect {|meal| meal.tip}
    meal = meals.find {|meal| meal.tip == tips.sort.last}
    meal.customer
  end  

end