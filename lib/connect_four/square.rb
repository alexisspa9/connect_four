class Square
  attr_reader :row, :col
  attr_accessor :value, :left, :right, :up, :down
  attr_accessor :up_left, :down_left, :up_right, :down_right

  def initialize(input)
    args = defaults.merge(input)
    @row = args[:row]
    @col = args[:col]
    @value = args[:value]
    @left = args[:left]
    @right = args[:right]
    @up = args[:up]
    @down = args[:down]
    @up_left = args[:up_left]
    @down_left = args[:down_left]
    @up_right = args[:up_right]
    @down_right = args[:down_right]
  end

  # Replace the #inspect method so that it doesn't kill RSpec
  def inspect
    "I'm located at row #{row} and col #{col}"
  end

  # Replace the #to_s method so that it doesn't kill RSpec
  def to_s
    "I'm located at row #{row} and col #{col}"
  end

  private
  def defaults
    {
    value: " ",
    left: nil,
    right: nil,
    up: nil,
    down: nil,
    up_left: nil,
    down_left: nil,
    up_right: nil,
    down_right: nil
    }
  end

end
