require 'test_helper'

class AtracaosControllerTest < ActionController::TestCase
  setup do
    @atracao = atracaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atracaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atracao" do
    assert_difference('Atracao.count') do
      post :create, :atracao => { :Id => @atracao.Id, :custo => @atracao.custo, :nome => @atracao.nome }
    end

    assert_redirected_to atracao_path(assigns(:atracao))
  end

  test "should show atracao" do
    get :show, :id => @atracao
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @atracao
    assert_response :success
  end

  test "should update atracao" do
    put :update, :id => @atracao, :atracao => { :Id => @atracao.Id, :custo => @atracao.custo, :nome => @atracao.nome }
    assert_redirected_to atracao_path(assigns(:atracao))
  end

  test "should destroy atracao" do
    assert_difference('Atracao.count', -1) do
      delete :destroy, :id => @atracao
    end

    assert_redirected_to atracaos_path
  end
end
