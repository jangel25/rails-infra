require 'test_helper'

class DetalleordensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalleorden = detalleordens(:one)
  end

  test "should get index" do
    get detalleordens_url
    assert_response :success
  end

  test "should get new" do
    get new_detalleorden_url
    assert_response :success
  end

  test "should create detalleorden" do
    assert_difference('Detalleorden.count') do
      post detalleordens_url, params: { detalleorden: { cantidad: @detalleorden.cantidad, orden_id: @detalleorden.orden_id, precioventa: @detalleorden.precioventa, producto_id: @detalleorden.producto_id } }
    end

    assert_redirected_to detalleorden_url(Detalleorden.last)
  end

  test "should show detalleorden" do
    get detalleorden_url(@detalleorden)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalleorden_url(@detalleorden)
    assert_response :success
  end

  test "should update detalleorden" do
    patch detalleorden_url(@detalleorden), params: { detalleorden: { cantidad: @detalleorden.cantidad, orden_id: @detalleorden.orden_id, precioventa: @detalleorden.precioventa, producto_id: @detalleorden.producto_id } }
    assert_redirected_to detalleorden_url(@detalleorden)
  end

  test "should destroy detalleorden" do
    assert_difference('Detalleorden.count', -1) do
      delete detalleorden_url(@detalleorden)
    end

    assert_redirected_to detalleordens_url
  end
end
