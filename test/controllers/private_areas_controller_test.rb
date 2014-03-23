require 'test_helper'

class PrivateAreasControllerTest < ActionController::TestCase
  setup do
    @private_area = private_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_area" do
    assert_difference('PrivateArea.count') do
      post :create, private_area: { references: @private_area.references }
    end

    assert_redirected_to private_area_path(assigns(:private_area))
  end

  test "should show private_area" do
    get :show, id: @private_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_area
    assert_response :success
  end

  test "should update private_area" do
    patch :update, id: @private_area, private_area: { references: @private_area.references }
    assert_redirected_to private_area_path(assigns(:private_area))
  end

  test "should destroy private_area" do
    assert_difference('PrivateArea.count', -1) do
      delete :destroy, id: @private_area
    end

    assert_redirected_to private_areas_path
  end
end
