require 'test_helper'

class SeguridadUsuariosControllerTest < ActionController::TestCase
  setup do
    @seguridad_usuario = seguridad_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seguridad_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seguridad_usuario" do
    assert_difference('SeguridadUsuario.count') do
      post :create, seguridad_usuario: { apellidos: @seguridad_usuario.apellidos, nombres: @seguridad_usuario.nombres, username: @seguridad_usuario.username }
    end

    assert_redirected_to seguridad_usuario_path(assigns(:seguridad_usuario))
  end

  test "should show seguridad_usuario" do
    get :show, id: @seguridad_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seguridad_usuario
    assert_response :success
  end

  test "should update seguridad_usuario" do
    patch :update, id: @seguridad_usuario, seguridad_usuario: { apellidos: @seguridad_usuario.apellidos, nombres: @seguridad_usuario.nombres, username: @seguridad_usuario.username }
    assert_redirected_to seguridad_usuario_path(assigns(:seguridad_usuario))
  end

  test "should destroy seguridad_usuario" do
    assert_difference('SeguridadUsuario.count', -1) do
      delete :destroy, id: @seguridad_usuario
    end

    assert_redirected_to seguridad_usuarios_path
  end
end
