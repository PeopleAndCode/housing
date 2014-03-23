require 'test_helper'

class CommonAreasControllerTest < ActionController::TestCase
  setup do
    @common_area = common_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_area" do
    assert_difference('CommonArea.count') do
      post :create, common_area: { references: @common_area.references }
    end

    assert_redirected_to common_area_path(assigns(:common_area))
  end

  test "should show common_area" do
    get :show, id: @common_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_area
    assert_response :success
  end

  test "should update common_area" do
    patch :update, id: @common_area, common_area: { references: @common_area.references }
    assert_redirected_to common_area_path(assigns(:common_area))
  end

  test "should destroy common_area" do
    assert_difference('CommonArea.count', -1) do
      delete :destroy, id: @common_area
    end

    assert_redirected_to common_areas_path
  end
end
