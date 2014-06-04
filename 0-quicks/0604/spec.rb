require_relative '0604_quick'

describe 'cutoff' do
	it 'normal cutoff' do
		expect(cutoff([1,2,3,4,5],3)).to eq([1,2,3])
	end
	it 'cutoff value too high to do anything' do
		expect(cutoff([1,2,3],10)).to eq([1,2,3])
	end
	it 'cutoff value too low to spare anything' do
		expect(cutoff([4,7,3,8,1],-1)).to eq([])
	end
	it 'empty array' do
		expect(cutoff([],1)).to eq([])
	end
end

describe 'pair_sum' do
	it 'normal pairs' do
		expect(pair_sum([1,2,3],[9,8,7])).to eq([10,10,10])
		expect(pair_sum([5,3,7],[1,7,2])).to eq([6,10,9])
	end
	it 'array length is 1' do
		expect(pair_sum([2],[98])).to eq([100])
	end
	it 'empty arrays' do
		expect(pair_sum([],[])).to eq([])
	end
end

describe 'rm_freq' do
	it 'string with one most frequent character' do
		expect(rm_freq("hello")).to eq("heo")
		expect(rm_freq("elements")).to eq("lmnts")
	end
	it 'more than one most frequent character' do
		expect(rm_freq("pencil")).to eq("encil")
	end
	it 'empty string' do
		expect(rm_freq("")).to eq("")
	end
end