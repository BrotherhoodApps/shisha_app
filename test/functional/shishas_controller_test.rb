require 'test_helper'

class ShishasControllerTest < ActionController::TestCase
  setup do
    @shisha = shishas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shishas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shisha" do
    assert_difference('Shisha.count') do
      post :create, :shisha => @shisha.attributes
    end

    assert_redirected_to shisha_path(assigns(:shisha))
  end

  test "should show shisha" do
    get :show, :id => @shisha.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shisha.to_param
    assert_response :success
  end

  test "should update shisha" do
    put :update, :id => @shisha.to_param, :shisha => @shisha.attributes
    assert_redirected_to shisha_path(assigns(:shisha))
  end

  test "should destroy shisha" do
    assert_difference('Shisha.count', -1) do
      delete :destroy, :id => @shisha.to_param
    end

    assert_redirected_to shishas_path
  end
end
