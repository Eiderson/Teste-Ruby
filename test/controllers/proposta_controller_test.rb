require 'test_helper'

class PropostaControllerTest < ActionController::TestCase
  setup do
    @propostum = proposta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propostum" do
    assert_difference('Propostum.count') do
      post :create, propostum: { cidade: @propostum.cidade, descricao: @propostum.descricao, fim: @propostum.fim, inicio: @propostum.inicio, nome: @propostum.nome, valor: @propostum.valor }
    end

    assert_redirected_to propostum_path(assigns(:propostum))
  end

  test "should show propostum" do
    get :show, id: @propostum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propostum
    assert_response :success
  end

  test "should update propostum" do
    patch :update, id: @propostum, propostum: { cidade: @propostum.cidade, descricao: @propostum.descricao, fim: @propostum.fim, inicio: @propostum.inicio, nome: @propostum.nome, valor: @propostum.valor }
    assert_redirected_to propostum_path(assigns(:propostum))
  end

  test "should destroy propostum" do
    assert_difference('Propostum.count', -1) do
      delete :destroy, id: @propostum
    end

    assert_redirected_to proposta_path
  end
end
