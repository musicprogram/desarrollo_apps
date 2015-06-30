require 'test_helper'

class DesarrolloAppsControllerTest < ActionController::TestCase
  setup do
    @desarrollo_app = desarrollo_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desarrollo_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desarrollo_app" do
    assert_difference('DesarrolloApp.count') do
      post :create, desarrollo_app: { descripcion: @desarrollo_app.descripcion, email_telefono: @desarrollo_app.email_telefono, nombre: @desarrollo_app.nombre }
    end

    assert_redirected_to desarrollo_app_path(assigns(:desarrollo_app))
  end

  test "should show desarrollo_app" do
    get :show, id: @desarrollo_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desarrollo_app
    assert_response :success
  end

  test "should update desarrollo_app" do
    patch :update, id: @desarrollo_app, desarrollo_app: { descripcion: @desarrollo_app.descripcion, email_telefono: @desarrollo_app.email_telefono, nombre: @desarrollo_app.nombre }
    assert_redirected_to desarrollo_app_path(assigns(:desarrollo_app))
  end

  test "should destroy desarrollo_app" do
    assert_difference('DesarrolloApp.count', -1) do
      delete :destroy, id: @desarrollo_app
    end

    assert_redirected_to desarrollo_apps_path
  end
end
