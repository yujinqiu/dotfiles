require 'securerandom'

length = (ARGV[0] || 14).to_i

NUMBERS = (0..9).to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a
SYMBOLS = %w(+ - ^ ! ? & @ \\)
CHARS = NUMBERS + UPPERCASE_LETTERS + LOWERCASE_LETTERS + SYMBOLS

def random_character
  random_index = SecureRandom.random_number(CHARS.length)
  CHARS[random_index].to_s
end

def random_number
  index = SecureRandom.random_number(NUMBERS.length)
  NUMBERS[index].to_s
end

def random_uppercase_letter
  index = SecureRandom.random_number(UPPERCASE_LETTERS.length)
  UPPERCASE_LETTERS[index].to_s
end

def random_lowercase_letter
  index = SecureRandom.random_number(LOWERCASE_LETTERS.length)
  LOWERCASE_LETTERS[index].to_s
end

def random_symbol
  index = SecureRandom.random_number(SYMBOLS.length)
  SYMBOLS[index].to_s
end

def prefix
	prefix = random_lowercase_letter
	prefix += random_uppercase_letter
	prefix += random_number
	prefix += random_symbol
end

if length > 4 then
	suffix = (length - 4).times.inject('') do |suffix|
	  suffix += random_character
	end
	puts prefix + suffix
else
	puts prefix
end

