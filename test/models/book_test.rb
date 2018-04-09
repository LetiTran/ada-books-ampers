# require 'test_helper'
#
# class BookTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end


# require "test_helper"

describe Book do
let(:book) {Book.new}

  it 'must be valid' do
    value(book).must_be :valid? 
  end
end
