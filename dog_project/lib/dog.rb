class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    #getters
    def name
        @name
    end 
    def breed
        @breed
    end
    def age
        @age
    end 

    #setter
    def age=(new_age)
        @age = new_age
    end 

    #///
    def bark
        if @age > 3 
            return @bark.upcase 
        else
            return @bark.downcase
        end 
    end
   

    def favorite_foods
        @favorite_foods
    end 

        def favorite_food?(string)
            @favorite_foods.map(&:downcase).include?(string.downcase)
        end 


end 