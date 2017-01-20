require 'test_helper'

class HospitalAnalytesControllerTest < ActionController::TestCase
  setup do
    @hospital_analyte = hospital_analytes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_analytes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_analyte" do
    assert_difference('HospitalAnalyte.count') do
      post :create, hospital_analyte: { analyte: @hospital_analyte.analyte, hospital: @hospital_analyte.hospital }
    end

    assert_redirected_to hospital_analyte_path(assigns(:hospital_analyte))
  end

  test "should show hospital_analyte" do
    get :show, id: @hospital_analyte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_analyte
    assert_response :success
  end

  test "should update hospital_analyte" do
    patch :update, id: @hospital_analyte, hospital_analyte: { analyte: @hospital_analyte.analyte, hospital: @hospital_analyte.hospital }
    assert_redirected_to hospital_analyte_path(assigns(:hospital_analyte))
  end

  test "should destroy hospital_analyte" do
    assert_difference('HospitalAnalyte.count', -1) do
      delete :destroy, id: @hospital_analyte
    end

    assert_redirected_to hospital_analytes_path
  end
end
