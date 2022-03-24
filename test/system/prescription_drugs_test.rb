require "application_system_test_case"

class PrescriptionDrugsTest < ApplicationSystemTestCase
  setup do
    @prescription_drug = prescription_drugs(:one)
  end

  test "visiting the index" do
    visit prescription_drugs_url
    assert_selector "h1", text: "Prescription Drugs"
  end

  test "creating a Prescription drug" do
    visit prescription_drugs_url
    click_on "New Prescription Drug"

    fill_in "Drug", with: @prescription_drug.drug_id
    fill_in "Prescription", with: @prescription_drug.prescription_id
    click_on "Create Prescription drug"

    assert_text "Prescription drug was successfully created"
    click_on "Back"
  end

  test "updating a Prescription drug" do
    visit prescription_drugs_url
    click_on "Edit", match: :first

    fill_in "Drug", with: @prescription_drug.drug_id
    fill_in "Prescription", with: @prescription_drug.prescription_id
    click_on "Update Prescription drug"

    assert_text "Prescription drug was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescription drug" do
    visit prescription_drugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescription drug was successfully destroyed"
  end
end
