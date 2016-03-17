require 'test_helper'

class PossessionsControllerTest < ActionController::TestCase
  setup do
    @possession = possessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possession" do
    assert_difference('Possession.count') do
      post :create, possession: { description: @possession.description, got_rid_of_at: @possession.got_rid_of_at, got_rid_of_reason: @possession.got_rid_of_reason, image_url: @possession.image_url, name: @possession.name }
    end

    assert_redirected_to possession_path(assigns(:possession))
  end

  test "should show possession" do
    get :show, id: @possession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possession
    assert_response :success
  end

  test "should update possession" do
    patch :update, id: @possession, possession: { description: @possession.description, got_rid_of_at: @possession.got_rid_of_at, got_rid_of_reason: @possession.got_rid_of_reason, image_url: @possession.image_url, name: @possession.name }
    assert_redirected_to possession_path(assigns(:possession))
  end

  test "should destroy possession" do
    assert_difference('Possession.count', -1) do
      delete :destroy, id: @possession
    end

    assert_redirected_to possessions_path
  end
end
