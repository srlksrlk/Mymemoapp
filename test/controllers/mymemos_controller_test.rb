require 'test_helper'

class MymemosControllerTest < ActionController::TestCase
  setup do
    @mymemo = mymemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mymemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mymemo" do
    assert_difference('Mymemo.count') do
      post :create, mymemo: { body: @mymemo.body, title: @mymemo.title }
    end

    assert_redirected_to mymemo_path(assigns(:mymemo))
  end

  test "should show mymemo" do
    get :show, id: @mymemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mymemo
    assert_response :success
  end

  test "should update mymemo" do
    patch :update, id: @mymemo, mymemo: { body: @mymemo.body, title: @mymemo.title }
    assert_redirected_to mymemo_path(assigns(:mymemo))
  end

  test "should destroy mymemo" do
    assert_difference('Mymemo.count', -1) do
      delete :destroy, id: @mymemo
    end

    assert_redirected_to mymemos_path
  end
end
