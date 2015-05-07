require 'test_helper'

class ViewsControllerTest < ActionController::TestCase
  setup do
    @view = views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create view" do
    assert_difference('View.count') do
      post :create, view: { directory_id: @view.directory_id, fecha: @view.fecha, hora: @view.hora }
    end

    assert_redirected_to view_path(assigns(:view))
  end

  test "should show view" do
    get :show, id: @view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @view
    assert_response :success
  end

  test "should update view" do
    patch :update, id: @view, view: { directory_id: @view.directory_id, fecha: @view.fecha, hora: @view.hora }
    assert_redirected_to view_path(assigns(:view))
  end

  test "should destroy view" do
    assert_difference('View.count', -1) do
      delete :destroy, id: @view
    end

    assert_redirected_to views_path
  end
end
