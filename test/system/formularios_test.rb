require "application_system_test_case"

class FormulariosTest < ApplicationSystemTestCase
  setup do
    @formulario = formularios(:one)
  end

  test "visiting the index" do
    visit formularios_url
    assert_selector "h1", text: "Formularios"
  end

  test "creating a Formulario" do
    visit formularios_url
    click_on "New Formulario"

    fill_in "Descripcion", with: @formulario.descripcion
    fill_in "Fecha", with: @formulario.fecha
    fill_in "Mascota", with: @formulario.mascota
    fill_in "Nombre", with: @formulario.nombre
    fill_in "Sexo", with: @formulario.sexo
    fill_in "Telefono", with: @formulario.telefono
    click_on "Create Formulario"

    assert_text "Formulario was successfully created"
    click_on "Back"
  end

  test "updating a Formulario" do
    visit formularios_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @formulario.descripcion
    fill_in "Fecha", with: @formulario.fecha
    fill_in "Mascota", with: @formulario.mascota
    fill_in "Nombre", with: @formulario.nombre
    fill_in "Sexo", with: @formulario.sexo
    fill_in "Telefono", with: @formulario.telefono
    click_on "Update Formulario"

    assert_text "Formulario was successfully updated"
    click_on "Back"
  end

  test "destroying a Formulario" do
    visit formularios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formulario was successfully destroyed"
  end
end
