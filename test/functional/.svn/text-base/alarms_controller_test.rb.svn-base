require 'test_helper'

class AlarmsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alarms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alarm" do
    assert_difference('Alarm.count') do
      post :create, :alarm => { }
    end

    assert_redirected_to alarm_path(assigns(:alarm))
  end

  test "should show alarm" do
    get :show, :id => alarms(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alarms(:one).to_param
    assert_response :success
  end

  test "should update alarm" do
    put :update, :id => alarms(:one).to_param, :alarm => { }
    assert_redirected_to alarm_path(assigns(:alarm))
  end

  test "should destroy alarm" do
    assert_difference('Alarm.count', -1) do
      delete :destroy, :id => alarms(:one).to_param
    end

    assert_redirected_to alarms_path
  end
end
