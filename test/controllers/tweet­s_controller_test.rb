require 'test_helper'

class Tweet­sControllerTest < ActionController::TestCase
  setup do
    @tweet­ = tweet­s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweet­s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweet­" do
    assert_difference('Tweet­.count') do
      post :create, tweet­: { status: @tweet­.status, zombie_id: @tweet­.zombie_id }
    end

    assert_redirected_to tweet­_path(assigns(:tweet­))
  end

  test "should show tweet­" do
    get :show, id: @tweet­
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweet­
    assert_response :success
  end

  test "should update tweet­" do
    patch :update, id: @tweet­, tweet­: { status: @tweet­.status, zombie_id: @tweet­.zombie_id }
    assert_redirected_to tweet­_path(assigns(:tweet­))
  end

  test "should destroy tweet­" do
    assert_difference('Tweet­.count', -1) do
      delete :destroy, id: @tweet­
    end

    assert_redirected_to tweet­s_path
  end
end
