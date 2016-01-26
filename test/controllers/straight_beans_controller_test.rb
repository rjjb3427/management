require 'test_helper'

class StraightBeansControllerTest < ActionController::TestCase
  setup do
    @straight_bean = straight_beans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:straight_beans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create straight_bean" do
    assert_difference('StraightBean.count') do
      post :create, straight_bean: { bean_id: @straight_bean.bean_id, loast: @straight_bean.loast }
    end

    assert_redirected_to straight_bean_path(assigns(:straight_bean))
  end

  test "should show straight_bean" do
    get :show, id: @straight_bean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @straight_bean
    assert_response :success
  end

  test "should update straight_bean" do
    patch :update, id: @straight_bean, straight_bean: { bean_id: @straight_bean.bean_id, loast: @straight_bean.loast }
    assert_redirected_to straight_bean_path(assigns(:straight_bean))
  end

  test "should destroy straight_bean" do
    assert_difference('StraightBean.count', -1) do
      delete :destroy, id: @straight_bean
    end

    assert_redirected_to straight_beans_path
  end
end
