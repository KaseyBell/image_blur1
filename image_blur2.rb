class Image

  def initialize(image_to_blur)
    @image_to_blur = image_to_blur
  end

  def output_image
    @image_to_blur.each_with_index do |arr, row_index|
      arr.each_with_index do |num, col_index|
        if num == 1
          @image_to_blur[col_index - 1][row_index]
          @image_to_blur[col_index + 1][row_index]
          @image_to_blur[col_index][row_index - 1]
          @image_to_blur[col_index][row_index + 1]
          puts "Found one at #{col_index - 1}, #{row_index}"  
          puts "Found one at #{col_index + 1}, #{row_index}"
          puts "Found one at #{col_index}, #{row_index - 1}"
          puts "Found one at #{col_index}, #{row_index + 1}"        
        end

      end
    end
  end

end

image = Image.new([
  [0, 0, 0, 0,],
  [0, 1, 0, 0,],
  [0, 0, 0, 1,],
  [0, 0, 0, 0,]
])

image.output_image