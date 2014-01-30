class Grid

  attr_reader :cells

  def initialize(puzzle)
    @cells = puzzle.chars.map { |x| (x.to_i) }
  end

  def rows
    @rows = @cells.each_slice(9).to_a
  end

  def columns
    @rows = @cells.each_slice(9).to_a.transpose
  end

end















