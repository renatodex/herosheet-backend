require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get list_team_heroes" do
    get :list_team_heroes
    assert_response :success
  end

  test "should get update_hero_hit_points" do
    get :update_hero_hit_points
    assert_response :success
  end

  test "should get update_hero_healing_surges" do
    get :update_hero_healing_surges
    assert_response :success
  end

  test "should get update_hero_temporary_hit_points" do
    get :update_hero_temporary_hit_points
    assert_response :success
  end

  test "should get update_hero_action_points" do
    get :update_hero_action_points
    assert_response :success
  end

end
