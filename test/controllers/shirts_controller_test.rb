require 'test_helper'

class ShirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shirt = shirts(:one)
  end

  test "should get index" do
    get shirts_url
    assert_response :success
  end

  test "should get new" do
    get new_shirt_url
    assert_response :success
  end

  test "should create shirt" do
    assert_difference('Shirt.count') do
      post shirts_url, params: { shirt: { description: @shirt.description, image_url: "bor1.jpg", price: 112, title: "mon nouveau shirt" } }
    end

    assert_redirected_to shirt_url(Shirt.last)
  end

  test "should show shirt" do
    get shirt_url(@shirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_shirt_url(@shirt)
    assert_response :success
  end

  test "should update shirt" do
    patch shirt_url(@shirt), params: { shirt: { description: @shirt.description, image_url: @shirt.image_url, price: @shirt.price, title: @shirt.title } }
    assert_redirected_to shirt_url(@shirt)
  end

  test "should destroy shirt" do
    assert_difference('Shirt.count', -1) do
      delete shirt_url(@shirt)
    end

    assert_redirected_to shirts_url
  end
end
