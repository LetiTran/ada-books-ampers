<<<<<<< HEAD
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
=======
require "test_helper"

describe Book do
  let(:book) { Book.new }

  it "must be valid" do
    value(book).must_be :valid?
  end
>>>>>>> bf56c72c0a0ed62ef3ba191b928b35cdf28cc9b4
end
