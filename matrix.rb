class Matrix
  def initialize(width, height)
    @width = width
    @height = height
    @matrix = Array.new(width * height)
  end

  def loadMatrix(*vals)
    if (vals.length != (@width * @height))
       return
    else
      @matrix = *vals
    end
  end

  #take the loaded matrix and for each position calculate the 
  # value to store at the same i,j location in a new array.
  # If the values multiplied together in row i times the values
  # in column j are greater than 0, put a 1 in that spot, if less than
  # zero put a -1, else leave that spot 0
  def cross()
    # option 1. might want a block for the row and a block for the column, multiply together
    # option 2 or compute the rows and store in a smaller array and same for columns
    @result = Array.new(@width * @height)
    #now compute the location using indicies
    @matrix.each {|val| puts compute(val / @width, val % @width)}
  end

  def compute(i, j)
    #compute all the values in row i multiplied together times
    #all values in column j multiplied together
    prod_x = @matrix[i/@width]
    prod_y = @matrix[j]
    
    for x in 1..@width
       prod_x = prod_x * @matrix[x + i/@width]
    end

    for y in 1..@height
      prod_y = prod_y * @matrix[j + @width] 
    end

    if (prod_y * prod_x > 0)
       return 1
    elsif (prod_y * prod_x < 0)
       return -1
    else
       return 0
    end
  end
  
  def to_s()
    puts "Width #{@width} height #{@height}"
  end
end

##find the bugs

m = Matrix.new(3,4)
m.loadMatrix(1,2,0,4,5,6,7,-8,9,10,11,12)
m.cross()
