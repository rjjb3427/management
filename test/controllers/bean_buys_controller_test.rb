require 'test_helper'

class BeanBuysControllerTest < ActionController::TestCase
  setup do
    @bean_buy = bean_buys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bean_buys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bean_buy" do
    assert_difference('BeanBuy.count') do
      post :create, bean_buy: { arrival_id: @bean_buy.arrival_id, cost: @bean_buy.cost }
    end

    assert_redirected_to bean_buy_path(assigns(:bean_buy))
  end

  test "should show bean_buy" do
    get :show, id: @bean_buy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bean_buy
    assert_response :success
  end

  test "should update bean_buy" do
    patch :update, id: @bean_buy, bean_buy: { arrival_id: @bean_buy.arrival_id, cost: @bean_buy.cost }
    assert_redirected_to bean_buy_path(assigns(:bean_buy))
  end

  test "should destroy bean_buy" do
    assert_difference('BeanBuy.count', -1) do
      delete :destroy, id: @bean_buy
    end

    assert_redirected_to bean_buys_path
  end
end
