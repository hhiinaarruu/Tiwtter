require 'test_helper'

class TweeetsControllerTest < ActionController::TestCase
  setup do
    @tweeet = tweeets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweeets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweeet" do
    assert_difference('Tweeet.count') do
      post :create, tweeet: { tweeet: @tweeet.tweeet }
    end

    assert_redirected_to tweeet_path(assigns(:tweeet))
  end

  test "should show tweeet" do
    get :show, id: @tweeet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweeet
    assert_response :success
  end

  test "should update tweeet" do
    patch :update, id: @tweeet, tweeet: { tweeet: @tweeet.tweeet }
    assert_redirected_to tweeet_path(assigns(:tweeet))
  end

  test "should destroy tweeet" do
    assert_difference('Tweeet.count', -1) do
      delete :destroy, id: @tweeet
    end

    assert_redirected_to tweeets_path
  end
end
