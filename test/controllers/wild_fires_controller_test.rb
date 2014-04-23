require 'test_helper'

class WildFiresControllerTest < ActionController::TestCase
  setup do
    @wild_fire = wild_fires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wild_fires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wild_fire" do
    assert_difference('WildFire.count') do
      post :create, wild_fire: { firefighters_deployed: @wild_fire.firefighters_deployed, hazard_level: @wild_fire.hazard_level, location_id: @wild_fire.location_id }
    end

    assert_redirected_to wild_fire_path(assigns(:wild_fire))
  end

  test "should show wild_fire" do
    get :show, id: @wild_fire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wild_fire
    assert_response :success
  end

  test "should update wild_fire" do
    patch :update, id: @wild_fire, wild_fire: { firefighters_deployed: @wild_fire.firefighters_deployed, hazard_level: @wild_fire.hazard_level, location_id: @wild_fire.location_id }
    assert_redirected_to wild_fire_path(assigns(:wild_fire))
  end

  test "should destroy wild_fire" do
    assert_difference('WildFire.count', -1) do
      delete :destroy, id: @wild_fire
    end

    assert_redirected_to wild_fires_path
  end
end
