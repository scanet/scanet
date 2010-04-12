require 'test_helper'

class WmiNamespacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wmi_namespaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wmi_namespace" do
    assert_difference('WmiNamespace.count') do
      post :create, :wmi_namespace => { }
    end

    assert_redirected_to wmi_namespace_path(assigns(:wmi_namespace))
  end

  test "should show wmi_namespace" do
    get :show, :id => wmi_namespaces(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wmi_namespaces(:one).to_param
    assert_response :success
  end

  test "should update wmi_namespace" do
    put :update, :id => wmi_namespaces(:one).to_param, :wmi_namespace => { }
    assert_redirected_to wmi_namespace_path(assigns(:wmi_namespace))
  end

  test "should destroy wmi_namespace" do
    assert_difference('WmiNamespace.count', -1) do
      delete :destroy, :id => wmi_namespaces(:one).to_param
    end

    assert_redirected_to wmi_namespaces_path
  end
end
