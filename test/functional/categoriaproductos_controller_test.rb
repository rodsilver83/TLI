require 'test_helper'

class CategoriaproductosControllerTest < ActionController::TestCase
  setup do
    @categoriaproducto = categoriaproductos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoriaproductos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoriaproducto" do
    assert_difference('Categoriaproducto.count') do
      post :create, categoriaproducto: { name: @categoriaproducto.name }
    end

    assert_redirected_to categoriaproducto_path(assigns(:categoriaproducto))
  end

  test "should show categoriaproducto" do
    get :show, id: @categoriaproducto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoriaproducto
    assert_response :success
  end

  test "should update categoriaproducto" do
    put :update, id: @categoriaproducto, categoriaproducto: { name: @categoriaproducto.name }
    assert_redirected_to categoriaproducto_path(assigns(:categoriaproducto))
  end

  test "should destroy categoriaproducto" do
    assert_difference('Categoriaproducto.count', -1) do
      delete :destroy, id: @categoriaproducto
    end

    assert_redirected_to categoriaproductos_path
  end
end
