class WordAnalysis 
	def initialize(input)
	@input = input
	end

	def input
		@input
	end

	def word_count
		array = @input.downcase.gsub(/[^a-z\s]/, '').split(' ')
		frequency = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		frequency =  frequency.sort_by{ |word, occurance| [occurance]}
		frequency.each do |word, occurance|
     "#{word}, #{occurance}"
		end
	end

	def letter_count
		alpha_array = @input.downcase.split('')
		frequency = Hash.new(0)
		alpha_array.each do |x|
    	frequency[x] = input.downcase.count(x)
		end
		frequency = frequency.sort_by{|letter, occurance| [letter]}
	end

	def symbol_count
		symbol_array = []
		input = @input.gsub(/[a-zA-Z0-9 ]/, '')
		symbol_array = input.gsub(/[a-zA-Z0-9 ]/, '').split('')
		symbol_frequency = Hash.new(0)
		symbol_array.each do |x|
    	symbol_frequency[x] = input.count(x)
		end
		symbol_frequency = symbol_frequency.sort_by{|symbol, occurance| [-occurance]}
	end

	def top_words
		top = []
		array = @input.downcase.gsub(/[^a-z\s]/, '').split(' ')
		frequency = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		frequency = frequency.sort_by{ |word, occurance| [-occurance]}
		frequency.each do |key,value|
			if top.length == 3
				break
			end
			top << key
		end
		 top
	end

	def top_letters
		alpha_array = input.downcase.split('')
		frequency = Hash.new(0)
		alpha_array.each do |x|
    	frequency[x] = input.downcase.count(x)
		end
	frequency = frequency.sort_by{|letter, occurance| [-occurance]}
	top_letters = []
	frequency.each do |key, value|
    if top_letters.length == 3
        break
    end
    top_letters << key
	end
	top_letters
	end



end

# /[a-zA-Z0-9]/.match('.')