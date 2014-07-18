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
    STDOUT.should_receive(:puts).with('hello')
    STDOUT.should_receive(:puts).with('hi')
    STDOUT.should_receive(:puts).with('bye')
    Exercises.ex5(["hello", "hi", "bye"])
  end
  #nick says "there's no benefit to doing this as a programmer"
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
  it "adds 'str' to the end of the array if 'str' exsists in the array" do
    array = [1, 2, 4]
    array2 = [1, 2, 'str']
    str = 'str'
    expect(Exercises.ex7(array, str)).to eq(false)
    expect(Exercises.ex7(array2, str)).to eq(array2)
    array3 = [1, 'str', 3]
    array4 = [1, 'str', 3, 'str']
    expect(Exercises.ex7(array3, str)).to eq(array4)
  end
end

describe 'Exercise 8' do
  # `people` is an array of hashes. Each hash is like the following:
  #    { :name => 'Bob', :occupation => 'Builder' }
  it 'Iterate through `people` hash and print out their name and occupation.' do
    people = [{name: "alli", occupation: "ships code"}, {name: "nick z.", occupation: "madd skillz"}]
    expect(STDOUT).to receive(:puts).with("alli: ships code")
    expect(STDOUT).to receive(:puts).with("nick z.: madd skillz")
    Exercises.ex8(people)
  end
end

describe 'Exercise 9' do
  it 'Returns `true` if the given time is in a leap year' do
    #    Otherwise, returns `false`
    # Hint: Google for the wikipedia article on leap years
    non_leap = Time.now.to_date
    leap = Date.parse('2008-10-31')
    expect(Exercises.ex9(non_leap)).to eq(false)
    expect(Exercises.ex9(leap)).to eq(true)
  end
end













