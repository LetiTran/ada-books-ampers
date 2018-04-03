<<<<<<< HEAD
require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get books_show_url
    assert_response :success
  end

  test "should get new" do
    get books_new_url
    assert_response :success
  end

  test "should get create" do
    get books_create_url
    assert_response :success
  end

  test "should get edit" do
    get books_edit_url
    assert_response :success
  end

  test "should get update" do
    get books_update_url
    assert_response :success
  end

  test "should get destroy" do
    get books_destroy_url
    assert_response :success
  end

  test "should get index" do
    get books_index_url
    assert_response :success
=======
require "test_helper"

describe BooksController do
  it "should get show" do
    get books_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get books_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get books_create_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get books_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get books_update_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get books_destroy_url
    value(response).must_be :success?
  end

  it "should get index" do
    get books_index_url
    value(response).must_be :success?
>>>>>>> bf56c72c0a0ed62ef3ba191b928b35cdf28cc9b4
  end

end
