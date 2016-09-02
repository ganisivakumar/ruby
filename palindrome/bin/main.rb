require_relative "../lib/string"
require 'benchmark'
ITERATIONS = 100_000
Benchmark.bm do|bm|
  bm.report('without_regex') do
    ITERATIONS.times do
      loop do
        #puts 'Enter the string to check palindrome or enter q/Q to quit'
        #input = gets.chomp
        input = 'Q'

        if input == 'q' or input == 'Q'
          break
        end
        #puts input.palindrome?
      end
    end
  end
  bm.report('with_regex') do
    ITERATIONS.times do
      loop do
        #puts 'Enter the string to check palindrome or enter q/Q to quit'
        #input = gets.chomp
        input = 'Q'

        if input =~ /^q$/i 
          break
        end
        #puts input.palindrome?
      end
    end
  end
end
