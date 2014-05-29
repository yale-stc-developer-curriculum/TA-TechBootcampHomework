require './kata.rb'
require 'rspec'

describe 'Greet' do
  it 'should greet the person accordingly' do
	expect(greet("maya")).to eq("Hello Maya!")
	expect(greet("JACK")).to eq("Hello Jack!")
	expect(greet("marcus")).to eq("Hello Marcus!")
  end   
end

describe 'Boiled Eggs' do
  it 'should calculate the cooking time' do
    expect(cooking_time(0)).to eq(0)
    expect(cooking_time(5)).to eq(5)
    expect(cooking_time(10)).to eq(10)
  end
end