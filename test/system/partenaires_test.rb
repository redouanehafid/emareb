require "application_system_test_case"

class PartenairesTest < ApplicationSystemTestCase
  setup do
    @partenaire = partenaires(:one)
  end

  test "visiting the index" do
    visit partenaires_url
    assert_selector "h1", text: "Partenaires"
  end

  test "creating a Partenaire" do
    visit partenaires_url
    click_on "New Partenaire"

    fill_in "Partenaire", with: @partenaire.Partenaire
    fill_in "Title", with: @partenaire.title
    click_on "Create Partenaire"

    assert_text "Partenaire was successfully created"
    click_on "Back"
  end

  test "updating a Partenaire" do
    visit partenaires_url
    click_on "Edit", match: :first

    fill_in "Partenaire", with: @partenaire.Partenaire
    fill_in "Title", with: @partenaire.title
    click_on "Update Partenaire"

    assert_text "Partenaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Partenaire" do
    visit partenaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Partenaire was successfully destroyed"
  end
end
