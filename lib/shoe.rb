require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    #BRANDS << brand
    @brand = brand
    if BRANDS.length < 1
      BRANDS << brand
    else
      BRANDS.each do |brandli|
        if brand == brandli
          break
        else
          BRANDS << brand
        end
        BRANDS
      end
    end
    binding.pry
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
