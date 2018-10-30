require "application_system_test_case"

class DetalleordensTest < ApplicationSystemTestCase
  setup do
    @detalleorden = detalleordens(:one)
  end

  test "visiting the index" do
    visit detalleordens_url
    assert_selector "h1", text: "Detalleordens"
  end

  test "creating a Detalleorden" do
    visit detalleordens_url
    click_on "New Detalleorden"

    fill_in "Cantidad", with: @detalleorden.cantidad
    fill_in "Orden", with: @detalleorden.orden_id
    fill_in "Precioventa", with: @detalleorden.precioventa
    fill_in "Producto", with: @detalleorden.producto_id
    click_on "Create Detalleorden"

    assert_text "Detalleorden was successfully created"
    click_on "Back"
  end

  test "updating a Detalleorden" do
    visit detalleordens_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detalleorden.cantidad
    fill_in "Orden", with: @detalleorden.orden_id
    fill_in "Precioventa", with: @detalleorden.precioventa
    fill_in "Producto", with: @detalleorden.producto_id
    click_on "Update Detalleorden"

    assert_text "Detalleorden was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalleorden" do
    visit detalleordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalleorden was successfully destroyed"
  end
end
