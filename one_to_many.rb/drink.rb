# require 'pry'
# RUN RUBY FILE 
    # ruby file_name.rb 
# global var better to define outside the class
    # preced with $ sign 
    # $global = "global"
class Drink 
    # # GETTER
    #     attr_reader :alcoholic, :name, :size, :ingredients, :beef
    # # SETTER 
    #     attr_writer :alcoholic, :name, :size, :ingredients, :beef

    # ACCESSOR => combine GETTER and SETTER
        attr_accessor :alcoholic, :name, :size, :ingredients, :beef

    # class var 

    @@all = []
    # preced with @@ sign

    # instance var 
    # preced with @ sign

    # constructor 
    def initialize (name, size, alcoholic, ingredients)
        @name = name
        @size = size
        @alcoholic = alcoholic
        @ingredients = ingredients

        @@all << self 
    end

    

    # instance methods 
        # getter method => report an attributes within in class 
        # equivalent to attr_reader
        # def alcoholic
        #     @alocoholic
        # end

        # def name 
        #     @name
        # end

        # setter method => change value  stored on instance variable 
        # equivalent to attr_writer
        # def size(new_size)
        #     @size = new_size
        # end
        def change_ingredients(target_ingredient, new_ingredient)

        end
        def calculate_tax
            puts "calculating taxe"
        end
# SELF CONCEPT: self reffer to curent instance class/ method / var
        def print_details
            self.calculate_tax # reffer to current intance 
            puts " this is a #{@name} "
        end

    # class methods => stuff the entire class can do

    # def self.method_name
    # end 
    def self.all
        puts @@all
    end
    def self.compte_instance
        puts @@all.length
    end


end

# tenary 
# condition ? true_case : false_case 


