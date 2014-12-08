require 'test_helper'

class BagiscisControllerTest < ActionController::TestCase
  setup do
    @bagisci = bagiscis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bagiscis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bagisci" do
    assert_difference('Bagisci.count') do
      post :create, bagisci: { bagiszaman: @bagisci.bagiszaman, kanGrubu: @bagisci.kanGrubu, lastname: @bagisci.lastname, name: @bagisci.name, tcno: @bagisci.tcno }
    end

    assert_redirected_to bagisci_path(assigns(:bagisci))
  end

  test "should show bagisci" do
    get :show, id: @bagisci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bagisci
    assert_response :success
  end

  test "should update bagisci" do
    put :update, id: @bagisci, bagisci: { bagiszaman: @bagisci.bagiszaman, kanGrubu: @bagisci.kanGrubu, lastname: @bagisci.lastname, name: @bagisci.name, tcno: @bagisci.tcno }
    assert_redirected_to bagisci_path(assigns(:bagisci))
  end

  test "should destroy bagisci" do
    assert_difference('Bagisci.count', -1) do
      delete :destroy, id: @bagisci
    end

    assert_redirected_to bagiscis_path
  end
end
