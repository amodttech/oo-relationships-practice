class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def create_dessert(name)
        Dessert.new(name, self)
    end

    def ingredients
        #return array of ingreients for the desserts
        DessertJoiner.all.map {|dj| dj.ingredient}

    end

    def desserts
        #return array of desserts the bakery makes
        Dessert.all.map {|dessert| dessert.name}
    end

    def average_calories
        #should return a float totaling the average number of calories for the desserts sold at this bakery
    end

    def shopping_list
        #should return a string of names for ingredients for the bakery
    end
end