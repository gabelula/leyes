require 'test_helper'

class LeysControllerTest < ActionController::TestCase
  setup do
    @ley = leys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ley" do
    assert_difference('Ley.count') do
      post :create, ley: { fecha: @ley.fecha, legislatura: @ley.legislatura, numero: @ley.numero, texto: @ley.texto, titulo: @ley.titulo }
    end

    assert_redirected_to ley_path(assigns(:ley))
  end

  test "should show ley" do
    get :show, id: @ley
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ley
    assert_response :success
  end

  test "should update ley" do
    patch :update, id: @ley, ley: { fecha: @ley.fecha, legislatura: @ley.legislatura, numero: @ley.numero, texto: @ley.texto, titulo: @ley.titulo }
    assert_redirected_to ley_path(assigns(:ley))
  end

  test "should destroy ley" do
    assert_difference('Ley.count', -1) do
      delete :destroy, id: @ley
    end

    assert_redirected_to leys_path
  end
end
