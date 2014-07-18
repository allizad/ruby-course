require 'pry-byebug'
require "./exercises.rb"


describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  it "returns the number of elements in the array" do
    array = [1, 2, 3]
    expect(Exercises.ex1(array)).to eq(3)
  end
end

describe 'Exercise 2' do
  it "returns the second element of an array" do
    array = ["joseph", "mary"]
    expect(Exercises.ex2(array)).to eq("mary")
  end
end

describe 'Exercise 3' do
  it "returns the sum of an array of given numbers" do
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(Exercises.ex3(array)).to eq(45)
  end
end

describe 'Exercise 4' do
  it "returns the max of an array of given numbers" do
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(Exercises.ex4(array)).to eq(9)
  end
end

describe 'Exercise 5' do
  #ask NICK
  it "puts each element in an array (old way)" do
    expect STDOUT.should_receive(:puts).with('hello')
    expect STDOUT.should_receive(:puts).with('hi')
    expect STDOUT.should_receive(:puts).with('bye')
    Exercises.ex5(["hello", "hi", "bye"])
  end
 it "puts each element in an array (new way)" do
    expect(STDOUT).to receive(:puts).and_return("hello")
    expect(STDOUT).to receive(:puts).and_return("hi")
    expect(STDOUT).to receive(:puts).and_return("bye")
    Exercises.ex5(["hello", "hi", "bye"])
  end
end

  #  - Updates the last item in the array to 'panda'
  #  - If the last item is already 'panda', update
  #    it to 'GODZILLA' instead

describe 'Exercise 6' do
  it "Updates the last item in the array to 'panda'" do
    array = [1, 2]
    expect(Exercises.ex6(array)).to eq([1, 'panda'])
  end
  it "updates array to 'GODZILLA' if panda's already there" do
    array = [1, 'panda']
    expect(Exercises.ex6(array)).to eq([1, 'GODZILLA'])
  end
end

# If the string `str` exists in the array,
#    add `str` to the end of the array

describe 'Exercise 7' do

end
















