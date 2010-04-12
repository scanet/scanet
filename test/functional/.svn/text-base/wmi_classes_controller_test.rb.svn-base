require 'test_helper'

class WmiClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wmi_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wmi_class" do
    assert_difference('WmiClass.count') do
      post :create, :wmi_class => { }
    end

    assert_redirected_to wmi_class_path(assigns(:wmi_class))
  end

  test "should show wmi_class" do
    get :show, :id => wmi_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wmi_classes(:one).to_param
    assert_response :success
  end

  test "should update wmi_class" do
    put :update, :id => wmi_classes(:one).to_param, :wmi_class => { }
    assert_redirected_to wmi_class_path(assigns(:wmi_class))
  end

  test "should destroy wmi_class" do
    assert_difference('WmiClass.count', -1) do
      delete :destroy, :id => wmi_classes(:one).to_param
    end

    assert_redirected_to wmi_classes_path
  end
end
