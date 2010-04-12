require 'test_helper'

class SoftwareReportsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_report" do
    assert_difference('SoftwareReport.count') do
      post :create, :software_report => { }
    end

    assert_redirected_to software_report_path(assigns(:software_report))
  end

  test "should show software_report" do
    get :show, :id => software_reports(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => software_reports(:one).to_param
    assert_response :success
  end

  test "should update software_report" do
    put :update, :id => software_reports(:one).to_param, :software_report => { }
    assert_redirected_to software_report_path(assigns(:software_report))
  end

  test "should destroy software_report" do
    assert_difference('SoftwareReport.count', -1) do
      delete :destroy, :id => software_reports(:one).to_param
    end

    assert_redirected_to software_reports_path
  end
end
