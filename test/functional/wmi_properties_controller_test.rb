require 'test_helper'

class WmiPropertiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wmi_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wmi_property" do
    assert_difference('WmiProperty.count') do
      post :create, :wmi_property => { }
    end

    assert_redirected_to wmi_property_path(assigns(:wmi_property))
  end

  test "should show wmi_property" do
    get :show, :id => wmi_properties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wmi_properties(:one).to_param
    assert_response :success
  end

  test "should update wmi_property" do
    put :update, :id => wmi_properties(:one).to_param, :wmi_property => { }
    assert_redirected_to wmi_property_path(assigns(:wmi_property))
  end

  test "should destroy wmi_property" do
    assert_difference('WmiProperty.count', -1) do
      delete :destroy, :id => wmi_properties(:one).to_param
    end

    assert_redirected_to wmi_properties_path
  end
end
