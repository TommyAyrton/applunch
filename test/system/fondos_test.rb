require "application_system_test_case"

class FondosTest < ApplicationSystemTestCase
  setup do
    @fondo = fondos(:one)
  end

  test "visiting the index" do
    visit fondos_url
    assert_selector "h1", text: "Fondos"
  end

  test "creating a Fondo" do
    visit fondos_url
    click_on "New Fondo"

    fill_in "Descripcion", with: @fondo.descripcion
    fill_in "Estado", with: @fondo.estado
    fill_in "Nombre", with: @fondo.nombre
    click_on "Create Fondo"

    assert_text "Fondo was successfully created"
    click_on "Back"
  end

  test "updating a Fondo" do
    visit fondos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @fondo.descripcion
    fill_in "Estado", with: @fondo.estado
    fill_in "Nombre", with: @fondo.nombre
    click_on "Update Fondo"

    assert_text "Fondo was successfully updated"
    click_on "Back"
  end

  test "destroying a Fondo" do
    visit fondos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fondo was successfully destroyed"
  end
end
