require 'test_helper'

class ConsultantServicesControllerTest < ActionController::TestCase
  setup do
    @consultant_service = consultant_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultant_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultant_service" do
    assert_difference('ConsultantService.count') do
      post :create, consultant_service: { total_promised: @consultant_service.total_promised, total_received: @consultant_service.total_received }
    end

    assert_redirected_to consultant_service_path(assigns(:consultant_service))
  end

  test "should show consultant_service" do
    get :show, id: @consultant_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultant_service
    assert_response :success
  end

  test "should update consultant_service" do
    put :update, id: @consultant_service, consultant_service: { total_promised: @consultant_service.total_promised, total_received: @consultant_service.total_received }
    assert_redirected_to consultant_service_path(assigns(:consultant_service))
  end

  test "should destroy consultant_service" do
    assert_difference('ConsultantService.count', -1) do
      delete :destroy, id: @consultant_service
    end

    assert_redirected_to consultant_services_path
  end
end
