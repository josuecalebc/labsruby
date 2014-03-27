class Dessert

    def initialize(name, calories)
      @name = name
      @calories = calories
      @@count += 1
    end
    
    def healthy?
       @calories < 200            
    end
    
    def delicious?
      true
    end
    
    def to_s
      # YOUR CODE HERE
    end

    def set_name(name)
      @name = name
    end

    def get_name()
      @name      
    end

    def set_calories(calories)
      @calories = calories
    end

    def get_calories()      
      @calories
    end

    def count()
      @@count
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
      @name = name
      @calories = calories
      @flavor = flavor
      @@count += 1
    end

    def delicious?
      if(@flavor.downcase == "black licorice")
      true
    end
    def set_flavor(flavor)
      @flavor = flavor
    end

    def get_flavor()
      @flavor
    end

end
