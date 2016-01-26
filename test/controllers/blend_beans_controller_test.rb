require 'test_helper'

class BlendBeansControllerTest < ActionController::TestCase
  setup do
    @blend_bean = blend_beans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blend_beans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blend_bean" do
    assert_difference('BlendBean.count') do
      post :create, blend_bean: { bean_id: @blend_bean.bean_id, blended_name: @blend_bean.blended_name }
    end

    assert_redirected_to blend_bean_path(assigns(:blend_bean))
  end

  test "should show blend_bean" do
    get :show, id: @blend_bean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blend_bean
    assert_response :success
  end

  test "should update blend_bean" do
    patch :update, id: @blend_bean, blend_bean: { bean_id: @blend_bean.bean_id, blended_name: @blend_bean.blended_name }
    assert_redirected_to blend_bean_path(assigns(:blend_bean))
  end

  test "should destroy blend_bean" do
    assert_difference('BlendBean.count', -1) do
      delete :destroy, id: @blend_bean
    end

    assert_redirected_to blend_beans_path
  end
end
