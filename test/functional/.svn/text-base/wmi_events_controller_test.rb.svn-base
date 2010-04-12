require 'test_helper'

class WmiEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wmi_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wmi_event" do
    assert_difference('WmiEvent.count') do
      post :create, :wmi_event => { }
    end

    assert_redirected_to wmi_event_path(assigns(:wmi_event))
  end

  test "should show wmi_event" do
    get :show, :id => wmi_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wmi_events(:one).to_param
    assert_response :success
  end

  test "should update wmi_event" do
    put :update, :id => wmi_events(:one).to_param, :wmi_event => { }
    assert_redirected_to wmi_event_path(assigns(:wmi_event))
  end

  test "should destroy wmi_event" do
    assert_difference('WmiEvent.count', -1) do
      delete :destroy, :id => wmi_events(:one).to_param
    end

    assert_redirected_to wmi_events_path
  end
end
