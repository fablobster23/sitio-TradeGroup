require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, producto: @producto.attributes
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto.to_param
    assert_response :success
  end

  test "should update producto" do
    put :update, id: @producto.to_param, producto: @producto.attributes
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, id: @producto.to_param
    end

    assert_redirected_to productos_path
  end
end
