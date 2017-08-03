require 'test_helper'

class NailArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nail_art = nail_arts(:one)
  end

  test "should get index" do
    get nail_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_nail_art_url
    assert_response :success
  end

  test "should create nail_art" do
    assert_difference('NailArt.count') do
      post nail_arts_url, params: { nail_art: {  } }
    end

    assert_redirected_to nail_art_url(NailArt.last)
  end

  test "should show nail_art" do
    get nail_art_url(@nail_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_nail_art_url(@nail_art)
    assert_response :success
  end

  test "should update nail_art" do
    patch nail_art_url(@nail_art), params: { nail_art: {  } }
    assert_redirected_to nail_art_url(@nail_art)
  end

  test "should destroy nail_art" do
    assert_difference('NailArt.count', -1) do
      delete nail_art_url(@nail_art)
    end

    assert_redirected_to nail_arts_url
  end
end
