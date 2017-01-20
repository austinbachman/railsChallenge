require 'test_helper'

class SpecimenControllerTest < ActionController::TestCase
  setup do
    @speciman = specimen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specimen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speciman" do
    assert_difference('Speciman.count') do
      post :create, speciman: { date_received: @speciman.date_received, sample_name: @speciman.sample_name, sample_type: @speciman.sample_type }
    end

    assert_redirected_to speciman_path(assigns(:speciman))
  end

  test "should show speciman" do
    get :show, id: @speciman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speciman
    assert_response :success
  end

  test "should update speciman" do
    patch :update, id: @speciman, speciman: { date_received: @speciman.date_received, sample_name: @speciman.sample_name, sample_type: @speciman.sample_type }
    assert_redirected_to speciman_path(assigns(:speciman))
  end

  test "should destroy speciman" do
    assert_difference('Speciman.count', -1) do
      delete :destroy, id: @speciman
    end

    assert_redirected_to specimen_path
  end
end
