require "./lib/connect_four/square.rb"

RSpec.describe Square do
	describe "#initialize" do
		it "raises error if no arguments are given" do
			expect { Square.new }.to raise_error(ArgumentError)
		end

		it "doesn't raise an error when given a valid hash input" do
			expect { Square.new({row: 2, col: 3 }) }.to_not raise_error
		end
		it "doesn't raise an error when given additional input" do
			expect { Square.new({row: 2, col: 3, value: "X", right: 7 }) }.to_not raise_error
		end
	end

	before do
		@square = Square.new({
			row: 2,
			col: 3,
			value: "X",
			down: 5,
			right: 5,
			up: 5,
			left: 5,
			down_right: 5,
			down_left: 5,
			up_right: 5,
			up_left: 5
		})

		@default_square = Square.new({row: 2, col: 3})
	end

	describe "#value" do
		it "returns the value given" do
			expect(@square.value).to eq("X")
		end
		it "can be changed" do
			expect(@square.value = "O").to eq("O")
		end
	end

	describe "#row" do
		it "returns the given value" do
			expect(@square.row).to eq(2)
		end
		it "can't be changed" do
			expect{ @square.row = 3 }.to raise_error(NoMethodError)
		end
	end

	describe "#col" do
		it "returns the given value" do
			expect(@square.col).to eq(3)
		end
		it "can't be changed" do
			expect{ @square.col = 4 }.to raise_error(NoMethodError)
		end
	end

	describe "#down" do
		it "return the given value" do
			expect(@square.down).to eq(5)
		end
		it "can be changed" do
			expect(@square.down = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.down).to be(nil)
		end
	end

	describe "#left" do
		it "return the given value" do
			expect(@square.left).to eq(5)
		end
		it "can be changed" do
			expect(@square.left = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.left).to be(nil)
		end
	end

	describe "#right" do
		it "return the given value" do
			expect(@square.right).to eq(5)
		end
		it "can be changed" do
			expect(@square.right = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.right).to be(nil)
		end
	end

	describe "#up" do
		it "return the given value" do
			expect(@square.up).to eq(5)
		end
		it "can be changed" do
			expect(@square.up = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.up).to be(nil)
		end
	end

	describe "#up_left" do
		it "return the given value" do
			expect(@square.up_left).to eq(5)
		end
		it "can be changed" do
			expect(@square.up_left = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.up_left).to be(nil)
		end
	end

	describe "#up_right" do
		it "return the given value" do
			expect(@square.up_right).to eq(5)
		end
		it "can be changed" do
			expect(@square.up_right = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.up_right).to be(nil)
		end
	end

	describe "#down_right" do
		it "return the given value" do
			expect(@square.down_right).to eq(5)
		end
		it "can be changed" do
			expect(@square.down_right = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.down_right).to be(nil)
		end
	end

	describe "#down_left" do
		it "return the given value" do
			expect(@square.down_left).to eq(5)
		end
		it "can be changed" do
			expect(@square.down_left = 4).to eq(4)
		end
		it "has a default value of nil" do
			expect(@default_square.down_left).to be(nil)
		end
	end

end