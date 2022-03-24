class PrescriptionDrugsController < ApplicationController
  before_action :set_prescription_drug, only: %i[ show edit update destroy ]

  # GET /prescription_drugs or /prescription_drugs.json
  def index
    @prescription_drugs = PrescriptionDrug.all
  end

  # GET /prescription_drugs/1 or /prescription_drugs/1.json
  def show
  end

  # GET /prescription_drugs/new
  def new
    @prescription_drug = PrescriptionDrug.new
  end

  # GET /prescription_drugs/1/edit
  def edit
  end

  # POST /prescription_drugs or /prescription_drugs.json
  def create
    @prescription_drug = PrescriptionDrug.new(prescription_drug_params)

    respond_to do |format|
      if @prescription_drug.save
        format.html { redirect_to prescription_drug_url(@prescription_drug), notice: "Prescription drug was successfully created." }
        format.json { render :show, status: :created, location: @prescription_drug }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescription_drugs/1 or /prescription_drugs/1.json
  def update
    respond_to do |format|
      if @prescription_drug.update(prescription_drug_params)
        format.html { redirect_to prescription_drug_url(@prescription_drug), notice: "Prescription drug was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription_drug }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescription_drugs/1 or /prescription_drugs/1.json
  def destroy
    @prescription_drug.destroy

    respond_to do |format|
      format.html { redirect_to prescription_drugs_url, notice: "Prescription drug was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription_drug
      @prescription_drug = PrescriptionDrug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_drug_params
      params.require(:prescription_drug).permit(:prescription_id, :drug_id)
    end
end
