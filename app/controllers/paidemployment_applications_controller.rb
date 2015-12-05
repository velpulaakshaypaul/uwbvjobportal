class PaidemploymentApplicationsController < ApplicationController
  before_action :set_paidemployment_application, only: [:show, :edit, :update, :destroy]

  # GET /paidemployment_applications
  # GET /paidemployment_applications.json
  def index
    @paidemployment_applications = PaidemploymentApplication.all
  end

  # GET /paidemployment_applications/1
  # GET /paidemployment_applications/1.json
  def show
  end

  # GET /paidemployment_applications/new
  def new
    @application = Application.find_by_id(params[:application_id])
    @paidemployment_application = PaidemploymentApplication.new
  end

  # GET /paidemployment_applications/1/edit
  def edit
  end

  # POST /paidemployment_applications
  # POST /paidemployment_applications.json
  def create
    @paidemployment_application = PaidemploymentApplication.new(paidemployment_application_params)

    respond_to do |format|
      if @paidemployment_application.save
        format.html { redirect_to @paidemployment_application, notice: 'Paidemployment application was successfully created.' }
        format.json { render :show, status: :created, location: @paidemployment_application }
      else
        format.html { render :new }
        format.json { render json: @paidemployment_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paidemployment_applications/1
  # PATCH/PUT /paidemployment_applications/1.json
  def update
    respond_to do |format|
      if @paidemployment_application.update(paidemployment_application_params)
        format.html { redirect_to @paidemployment_application, notice: 'Paidemployment application was successfully updated.' }
        format.json { render :show, status: :ok, location: @paidemployment_application }
      else
        format.html { render :edit }
        format.json { render json: @paidemployment_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paidemployment_applications/1
  # DELETE /paidemployment_applications/1.json
  def destroy
    @paidemployment_application.destroy
    respond_to do |format|
      format.html { redirect_to paidemployment_applications_url, notice: 'Paidemployment application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paidemployment_application
      @paidemployment_application = PaidemploymentApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paidemployment_application_params
      params.require(:paidemployment_application).permit(:applicant_id, :job_id, :application_id, :referral_source, :preferred_contact, :availability_date, :desired_salary, :transportation, :over_eighteen, :work_proof, :controlledsubstance_test, :a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8)
    end
end
