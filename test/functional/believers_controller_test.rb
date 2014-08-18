require 'test_helper'

class BelieversControllerTest < ActionController::TestCase
  setup do
    @believer = believers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:believers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create believer" do
    assert_difference('Believer.count') do
      post :create, believer: { dob: @believer.dob, email: @believer.email, name: @believer.name, phone: @believer.phone, status: @believer.status }
    end

    assert_redirected_to believer_path(assigns(:believer))
  end

  test "should show believer" do
    get :show, id: @believer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @believer
    assert_response :success
  end

  test "should update believer" do
    put :update, id: @believer, believer: { dob: @believer.dob, email: @believer.email, name: @believer.name, phone: @believer.phone, status: @believer.status }
    assert_redirected_to believer_path(assigns(:believer))
  end

  test "should destroy believer" do
    assert_difference('Believer.count', -1) do
      delete :destroy, id: @believer
    end

    assert_redirected_to believers_path
  end
end
