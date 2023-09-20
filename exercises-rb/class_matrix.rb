class Matrix 
  def initialize(matrix)
    @matrix = matrix.split("\n").map{|elem| elem.split().map{|str| str.to_i}}
  end

  def row(row_num)
    p @matrix[row_num]
  end
  
end



# def matrix(matrix)
#  p matrix.split("\n").map{|elem| elem.split().map{|str| str.to_i}}
#end

#matrix("1 2 3\n4 5 6\n7 8 9\n8 7 6")