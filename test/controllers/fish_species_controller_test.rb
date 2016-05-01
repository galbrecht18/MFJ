require 'test_helper'

class FishSpeciesControllerTest < ActionController::TestCase
  setup do
    @fish_specy = fish_species(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fish_species)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fish_specy" do
    assert_difference('FishSpecy.count') do
      post :create, fish_specy: {  }
    end

    assert_redirected_to fish_specy_path(assigns(:fish_specy))
  end

  test "should show fish_specy" do
    get :show, id: @fish_specy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fish_specy
    assert_response :success
  end

  test "should update fish_specy" do
    patch :update, id: @fish_specy, fish_specy: {  }
    assert_redirected_to fish_specy_path(assigns(:fish_specy))
  end

  test "should destroy fish_specy" do
    assert_difference('FishSpecy.count', -1) do
      delete :destroy, id: @fish_specy
    end

    assert_redirected_to fish_species_path
  end
end
