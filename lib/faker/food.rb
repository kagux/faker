module Faker
  class Food < Base
    flexible :name

    class << self
      def dish
        parse('food.dish')
      end

      def fruit; fetch ('food.fruit') end
      def meat; fetch ('food.meat') end
      def fish; fetch ('food.fish') end
      def vegetable; fetch ('food.vegetable') end
      def dessert; fetch ('food.dessert') end
      def temperature; fetch ('food.temperature') end
      def main_course_suffix; fetch ('food.main_course.suffix') end
      def main_course_prefix; fetch ('food.main_course.prefix') end
      def main_course_category
        fetch('food.'+%w(meat fish vegetable).sample)
      end
    end
  end
end
