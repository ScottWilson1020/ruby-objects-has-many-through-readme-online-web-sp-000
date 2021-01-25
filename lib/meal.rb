class Meal
    attr_accessor :customer, :waiter, :total, :tip

    @@all = Array.new

    def initialize(waiter, customer, total, tip = 0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end
def best_tipper
  best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal_b.tip
  end
 
  best_tipped_meal.customer
end
    def self.all
        @@all
    end
    
    
end