require 'test_helper'

class BloggsControllerTest < ActionController::TestCase
  setup do
    @blogg = bloggs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloggs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blogg" do
    assert_difference('Blogg.count') do
      post :create, blogg: { notes: @blogg.notes, title: @blogg.title }
    end

    assert_redirected_to blogg_path(assigns(:blogg))
  end

  test "should show blogg" do
    get :show, id: @blogg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blogg
    assert_response :success
  end

  test "should update blogg" do
    patch :update, id: @blogg, blogg: { notes: @blogg.notes, title: @blogg.title }
    assert_redirected_to blogg_path(assigns(:blogg))
  end

  test "should destroy blogg" do
    assert_difference('Blogg.count', -1) do
      delete :destroy, id: @blogg
    end

    assert_redirected_to bloggs_path
  end
end
