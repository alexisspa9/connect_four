class Square
	attr_reader :row, :col
	attr_accessor :value, :down, :up, :right, :left, :down_right, :down_left, :up_right, :up_left
	def initialize(input)
		args = defaults.merge(input)
		@row = args[:row]
		@col = args[:col]
		@value = args[:value]
		@up = args[:up]
		@down = args[:down]
		@left = args[:left]
		@right = args[:right]
		@down_left = args[:down_left]
		@down_right = args[:down_right]
		@up_left = args[:up_left]
		@up_right = args[:up_right]
	end

	def to_s
    	"I'm located at row #{@row} and col #{@col}"
  	end


	private
	def defaults
		{
		value: " ",
		up: nil,
		down: nil,
		left: nil,
		right: nil,
		down_left: nil,
		down_right: nil,
		up_left: nil,
		up_right: nil
		}
	end
end