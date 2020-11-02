class Ingredient

    attr_accessor :name, :calories
    attr_reader
    attr_writer
    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        #should return an array of all dessert objects that use this ingredient
        DessertJoiner.all.select {|dessert| dessert.ingredient == self}
    end

    def bakeries
        #should return the bakery objects for the bakeries that use that ingredient
        DessertJoiner.all.select {|dj| dj.ingredient == self}.bakery


    end

    def self.find_all_by_name(ingredient)
        #should take a string argument and return an array of all ingredients that
    # include that string in their name
    # - .find_all_by_name('chocolate') might return ['chocolate sprinkles',
    #   'chocolate mousse', 'chocolate']
    # - make sure you aren't just looking for exact matches (like 'chocolate' ==
    #   'chocolate')
        @@all.select {|ing| ing.name.include? ingredient}

    end
end