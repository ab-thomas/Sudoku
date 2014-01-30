class Grid

  attr_reader :cells

  def initialize(puzzle)
    @cells = puzzle.chars.map{|c|  Cell.new(c.to_i) }

  end

  def rows
    @rows = @cells.each_slice(9).to_a
  end

  def columns
    @columns = rows.transpose
  end

  def boxes    
    first_index_of_boxes = [0,3,6,27,30,33,54,57,60]
    @boxes = first_index_of_boxes.map do | i | 
      [@cells[i]     , @cells[i + 1] , @cells[i + 2] , 
       @cells[i + 9] , @cells[i + 10], @cells[i + 11],
       @cells[i + 18], @cells[i + 19], @cells[i + 20]]
     end
  end

  def neighbours_for(cell)
    [rows,columns,boxes].map {|col| select_in(cell, col)}.flatten.uniq
  end

  def select_in(cell, collection)
    collection.select {|element| element.include?(cell)}
  end

  def candidates(cell)
    (1..9).to_a - neighbours_for(cell).map { |c| c.value }
  end

end


















