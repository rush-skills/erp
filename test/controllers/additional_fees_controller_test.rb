require 'test_helper'

class AdditionalFeesControllerTest < ActionController::TestCase
  setup do
    @additional_fee = additional_fees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additional_fees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional_fee" do
    assert_difference('AdditionalFee.count') do
      post :create, additional_fee: { amount: @additional_fee.amount, name: @additional_fee.name }
    end

    assert_redirected_to additional_fee_path(assigns(:additional_fee))
  end

  test "should show additional_fee" do
    get :show, id: @additional_fee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional_fee
    assert_response :success
  end

  test "should update additional_fee" do
    patch :update, id: @additional_fee, additional_fee: { amount: @additional_fee.amount, name: @additional_fee.name }
    assert_redirected_to additional_fee_path(assigns(:additional_fee))
  end

  test "should destroy additional_fee" do
    assert_difference('AdditionalFee.count', -1) do
      delete :destroy, id: @additional_fee
    end

    assert_redirected_to additional_fees_path
  end
end
