require "test_helper"

class PrescriptionDrugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescription_drug = prescription_drugs(:one)
  end

  test "should get index" do
    get prescription_drugs_url
    assert_response :success
  end

  test "should get new" do
    get new_prescription_drug_url
    assert_response :success
  end

  test "should create prescription_drug" do
    assert_difference('PrescriptionDrug.count') do
      post prescription_drugs_url, params: { prescription_drug: { drug_id: @prescription_drug.drug_id, prescription_id: @prescription_drug.prescription_id } }
    end

    assert_redirected_to prescription_drug_url(PrescriptionDrug.last)
  end

  test "should show prescription_drug" do
    get prescription_drug_url(@prescription_drug)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescription_drug_url(@prescription_drug)
    assert_response :success
  end

  test "should update prescription_drug" do
    patch prescription_drug_url(@prescription_drug), params: { prescription_drug: { drug_id: @prescription_drug.drug_id, prescription_id: @prescription_drug.prescription_id } }
    assert_redirected_to prescription_drug_url(@prescription_drug)
  end

  test "should destroy prescription_drug" do
    assert_difference('PrescriptionDrug.count', -1) do
      delete prescription_drug_url(@prescription_drug)
    end

    assert_redirected_to prescription_drugs_url
  end
end
