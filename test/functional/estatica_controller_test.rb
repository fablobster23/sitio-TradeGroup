require 'test_helper'

class EstaticaControllerTest < ActionController::TestCase
  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get productos" do
    get :productos
    assert_response :success
  end

  test "should get noticias" do
    get :noticias
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
