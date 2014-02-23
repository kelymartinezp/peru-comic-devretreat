require 'test_helper'

class CapitulosControllerTest < ActionController::TestCase
  setup do
    @capitulo = capitulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capitulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capitulo" do
    assert_difference('Capitulo.count') do
      post :create, capitulo: { nombre: @capitulo.nombre, numero_de_paginas: @capitulo.numero_de_paginas }
    end

    assert_redirected_to capitulo_path(assigns(:capitulo))
  end

  test "should show capitulo" do
    get :show, id: @capitulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capitulo
    assert_response :success
  end

  test "should update capitulo" do
    patch :update, id: @capitulo, capitulo: { nombre: @capitulo.nombre, numero_de_paginas: @capitulo.numero_de_paginas }
    assert_redirected_to capitulo_path(assigns(:capitulo))
  end

  test "should destroy capitulo" do
    assert_difference('Capitulo.count', -1) do
      delete :destroy, id: @capitulo
    end

    assert_redirected_to capitulos_path
  end
end
