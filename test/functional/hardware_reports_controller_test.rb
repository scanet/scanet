require 'test_helper'

class HardwareReportsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardware_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware_report" do
    assert_difference('HardwareReport.count') do
      post :create, :hardware_report => { }
    end

    assert_redirected_to hardware_report_path(assigns(:hardware_report))
  end

  test "should show hardware_report" do
    get :show, :id => hardware_reports(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hardware_reports(:one).to_param
    assert_response :success
  end

  test "should update hardware_report" do
    put :update, :id => hardware_reports(:one).to_param, :hardware_report => { }
    assert_redirected_to hardware_report_path(assigns(:hardware_report))
  end

  test "should destroy hardware_report" do
    assert_difference('HardwareReport.count', -1) do
      delete :destroy, :id => hardware_reports(:one).to_param
    end

    assert_redirected_to hardware_reports_path
  end
end
