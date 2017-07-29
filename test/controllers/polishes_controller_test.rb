require 'test_helper'

class PolishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polish = polishes(:one)
  end

  test "should get index" do
    get polishes_url
    assert_response :success
  end

  test "should get new" do
    get new_polish_url
    assert_response :success
  end

  test "should create polish" do
    assert_difference('Polish.count') do
      post polishes_url, params: { polish: { brand: @polish.brand, color: @polish.color, hex: @polish.hex, name: @polish.name } }
    end

    assert_redirected_to polish_url(Polish.last)
  end

  test "should show polish" do
    get polish_url(@polish)
    assert_response :success
  end

  test "should get edit" do
    get edit_polish_url(@polish)
    assert_response :success
  end

  test "should update polish" do
    patch polish_url(@polish), params: { polish: { brand: @polish.brand, color: @polish.color, hex: @polish.hex, name: @polish.name } }
    assert_redirected_to polish_url(@polish)
  end

  test "should destroy polish" do
    assert_difference('Polish.count', -1) do
      delete polish_url(@polish)
    end

    assert_redirected_to polishes_url
  end
end
