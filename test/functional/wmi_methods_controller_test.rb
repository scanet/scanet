require 'test_helper'

class WmiMethodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wmi_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wmi_method" do
    assert_difference('WmiMethod.count') do
      post :create, :wmi_method => { }
    end

    assert_redirected_to wmi_method_path(assigns(:wmi_method))
  end

  test "should show wmi_method" do
    get :show, :id => wmi_methods(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wmi_methods(:one).to_param
    assert_response :success
  end

  test "should update wmi_method" do
    put :update, :id => wmi_methods(:one).to_param, :wmi_method => { }
    assert_redirected_to wmi_method_path(assigns(:wmi_method))
  end

  test "should destroy wmi_method" do
    assert_difference('WmiMethod.count', -1) do
      delete :destroy, :id => wmi_methods(:one).to_param
    end

    assert_redirected_to wmi_methods_path
  end
end
