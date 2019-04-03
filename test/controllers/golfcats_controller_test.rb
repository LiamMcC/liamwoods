require 'test_helper'

class GolfcatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @golfcat = golfcats(:one)
  end

  test "should get index" do
    get golfcats_url
    assert_response :success
  end

  test "should get new" do
    get new_golfcat_url
    assert_response :success
  end

  test "should create golfcat" do
    assert_difference('Golfcat.count') do
      post golfcats_url, params: { golfcat: { description: @golfcat.description, image: @golfcat.image, title: @golfcat.title } }
    end

    assert_redirected_to golfcat_url(Golfcat.last)
  end

  test "should show golfcat" do
    get golfcat_url(@golfcat)
    assert_response :success
  end

  test "should get edit" do
    get edit_golfcat_url(@golfcat)
    assert_response :success
  end

  test "should update golfcat" do
    patch golfcat_url(@golfcat), params: { golfcat: { description: @golfcat.description, image: @golfcat.image, title: @golfcat.title } }
    assert_redirected_to golfcat_url(@golfcat)
  end

  test "should destroy golfcat" do
    assert_difference('Golfcat.count', -1) do
      delete golfcat_url(@golfcat)
    end

    assert_redirected_to golfcats_url
  end
end
