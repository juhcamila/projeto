require 'test_helper'

class AddredssesControllerTest < ActionController::TestCase
  setup do
    @addredss = addredsses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addredss" do
    assert_difference('Addredss.count') do
      post :create, addredss: { city: @addredss.city, contact_id: @addredss.contact_id, state: @addredss.state, street: @addredss.street }
    end

    assert_redirected_to addredss_path(assigns(:addredss))
  end

  test "should show addredss" do
    get :show, id: @addredss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addredss
    assert_response :success
  end

  test "should update addredss" do
    patch :update, id: @addredss, addredss: { city: @addredss.city, contact_id: @addredss.contact_id, state: @addredss.state, street: @addredss.street }
    assert_redirected_to addredss_path(assigns(:addredss))
  end

  test "should destroy addredss" do
    assert_difference('Addredss.count', -1) do
      delete :destroy, id: @addredss
    end

    assert_redirected_to addredsses_path
  end
end
