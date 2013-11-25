require 'test_helper'

class PensControllerTest < ActionController::TestCase
  setup do
    @pen = pens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pen" do
    assert_difference('Pen.count') do
      post :create, pen: {  }
    end

    assert_redirected_to pen_path(assigns(:pen))
  end

  test "should show pen" do
    get :show, id: @pen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pen
    assert_response :success
  end

  test "should update pen" do
    patch :update, id: @pen, pen: {  }
    assert_redirected_to pen_path(assigns(:pen))
  end

  test "should destroy pen" do
    assert_difference('Pen.count', -1) do
      delete :destroy, id: @pen
    end

    assert_redirected_to pens_path
  end
end
