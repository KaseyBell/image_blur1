#class Image

  #def initialize(flavor, size, drink)
    #@flavor = flavor
    #puts size
    #puts drink

  #end

  #def eatThePizza
    #puts @flavor
  #end


#end

class Image

  def initialize(image_to_blur)
    @image_to_blur = image_to_blur
  end

  def output_image
    @image_to_blur.each do |arr|
      puts
      puts arr.join("")
    end
    puts
  end

end

image = Image.new([
  [0, 0, 0, 0,],
  [0, 1, 0, 0,],
  [0, 0, 0, 1,],
  [0, 0, 0, 0,]
])

image.output_image