require "application_system_test_case"

class DoctorsTest < ApplicationSystemTestCase
  setup do
    @doctor = doctors(:one)
  end

  test "visiting the index" do
    visit doctors_url
    assert_selector "h1", text: "Doctors"
  end

  test "creating a Doctor" do
    visit doctors_url
    click_on "New Doctor"

    fill_in "Bdate", with: @doctor.bdate
    fill_in "Clinicaddress", with: @doctor.clinicaddress
    fill_in "Clinicname", with: @doctor.clinicname
    fill_in "Email", with: @doctor.email
    fill_in "Firstname", with: @doctor.firstname
    fill_in "Gender", with: @doctor.gender
    fill_in "Lastname", with: @doctor.lastname
    fill_in "Licensenumber", with: @doctor.licensenumber
    fill_in "Middlename", with: @doctor.middlename
    fill_in "Phonenumber", with: @doctor.phonenumber
    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "updating a Doctor" do
    visit doctors_url
    click_on "Edit", match: :first

    fill_in "Bdate", with: @doctor.bdate
    fill_in "Clinicaddress", with: @doctor.clinicaddress
    fill_in "Clinicname", with: @doctor.clinicname
    fill_in "Email", with: @doctor.email
    fill_in "Firstname", with: @doctor.firstname
    fill_in "Gender", with: @doctor.gender
    fill_in "Lastname", with: @doctor.lastname
    fill_in "Licensenumber", with: @doctor.licensenumber
    fill_in "Middlename", with: @doctor.middlename
    fill_in "Phonenumber", with: @doctor.phonenumber
    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor" do
    visit doctors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor was successfully destroyed"
  end
end
