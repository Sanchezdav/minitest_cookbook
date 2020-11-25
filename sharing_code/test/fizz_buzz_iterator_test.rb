require 'test_helper'
require 'fizz_buzz_iterator'

describe FizzBuzzIterator do
  include FizzBuzzHelpers

  subject { FizzBuzzIterator.new }

  it 'outputs sequential FizzBuzz values starting from 1' do
    expected_values = %w(1 2 Fizz 4 Buzz Fizz)
    verify_iterator_values(subject, *expected_values)
  end

  describe 'when initialized with a starting value' do
    subject { FizzBuzzIterator.new(10) }

    it 'outputs sequential FizzBuzz values starting from the starting value' do
      expected_values = %w(Buzz 11 Fizz 13 14 FizzBuzz)
      verify_iterator_values(subject, *expected_values)
    end
  end
end
