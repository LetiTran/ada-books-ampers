<<<<<<< HEAD
require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
=======
require "test_helper"

describe Author do
  let(:author) { Author.new }

  it "must be valid" do
    value(author).must_be :valid?
  end
>>>>>>> bf56c72c0a0ed62ef3ba191b928b35cdf28cc9b4
end
