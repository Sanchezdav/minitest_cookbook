require 'test_helper'
require 'fizz_buzz_iterator'

describe FizzBuzzIterator do
  subject { FizzBuzzIterator.new }

  it 'outputs sequential FizzBuzz values starting from 1' do
    expected = %w(1 2 Fizz 4 Buzz Fizz)
    check_iterator_values_over(subject, *expected)
  end

  describe 'when initialized with a starting value' do
    subject { FizzBuzzIterator.new(10) }

    it 'outputs sequential FizzBuzz values starting from the starting value' do
      expected = %w(Buzz 11 Fizz 13 14 FizzBuzz)
      check_iterator_values_over(subject, *expected)
    end
  end

  private

  def check_iterator_values_over(iterator, *values)
    values.each do |expected_value|
      next_value = iterator.next
      expect(next_value).must_equal expected_value
    end
  end
end
