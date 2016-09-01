require_relative "../lib/fibonacci"

generate_series = Fibonacci.new
generate_series.fibonacci_series_upto_given_int(1000) { |f| print f, " " }

