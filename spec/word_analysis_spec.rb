require 'rspec'
require_relative '../lib/word_analysis'

describe WordAnalysis do
	it 'counts the number of each word' do
		x = WordAnalysis.new('This is a sentence.')
		expect(x.word_count).to eq([["this", 1], ["is", 1], ["a", 1], ["sentence", 1]])
	end

	it 'counts the number of each letters' do
		x = WordAnalysis.new ('cat')
		expect(x.letter_count).to eq([['a', 1], ['c', 1], ['t', 1]])
	end

	it 'counts the number of each symbol' do 
		x = WordAnalysis.new('But this is a word! ? $ %')
		expect(x.symbol_count).to eq([['!',1], ['?', 1], ['$', 1], ['%',1]])
	end

	it 'counts the top three most common words' do
		x = WordAnalysis.new('These, these, words, are, are, are, repeated, repeated, repeated, repeated.')
		expect(x.top_words).to eq(['repeated', 'are', 'these'])
	end

	it 'counts the top three most common letters' do
		x = WordAnalysis.new('committee')
		expect(x.top_letters).to eq(['e', 't', 'm'])
	end












end


# frequency = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }

# frequency = frequency.sort_by{ |word, occurance| [-occurance]}
