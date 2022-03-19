require "application_system_test_case"

class PrescriptionsTest < ApplicationSystemTestCase
  setup do
    @prescription = prescriptions(:one)
  end

  test "visiting the index" do
    visit prescriptions_url
    assert_selector "h1", text: "Prescriptions"
  end

  test "creating a Prescription" do
    visit prescriptions_url
    click_on "New Prescription"

    fill_in "Date", with: @prescription.date
    fill_in "Description", with: @prescription.description
    fill_in "Doctors", with: @prescription.doctors_id
    fill_in "Patient address", with: @prescription.patient_address
    fill_in "Patient fname", with: @prescription.patient_fname
    fill_in "Patient lname", with: @prescription.patient_lname
    fill_in "Patient mname", with: @prescription.patient_mname
    fill_in "Prescribedqty", with: @prescription.prescribedqty
    fill_in "Totalcost", with: @prescription.totalcost
    click_on "Create Prescription"

    assert_text "Prescription was successfully created"
    click_on "Back"
  end

  test "updating a Prescription" do
    visit prescriptions_url
    click_on "Edit", match: :first

    fill_in "Date", with: @prescription.date
    fill_in "Description", with: @prescription.description
    fill_in "Doctors", with: @prescription.doctors_id
    fill_in "Patient address", with: @prescription.patient_address
    fill_in "Patient fname", with: @prescription.patient_fname
    fill_in "Patient lname", with: @prescription.patient_lname
    fill_in "Patient mname", with: @prescription.patient_mname
    fill_in "Prescribedqty", with: @prescription.prescribedqty
    fill_in "Totalcost", with: @prescription.totalcost
    click_on "Update Prescription"

    assert_text "Prescription was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescription" do
    visit prescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescription was successfully destroyed"
  end
end
