class InternshipApplicationsController < ApplicationController
  before_action :set_internship_application, only: [:show, :edit, :update, :destroy]

  # GET /internship_applications
  # GET /internship_applications.json
  def index
    @internship_applications = InternshipApplication.all
  end

  # GET /internship_applications/1
  # GET /internship_applications/1.json
  def show
  end

  # GET /internship_applications/new
  def new
    @internship_application = InternshipApplication.new
  end

  # GET /internship_applications/1/edit
  def edit
  end

  # POST /internship_applications
  # POST /internship_applications.json
  def create
    @internship_application = InternshipApplication.new(internship_application_params)

    respond_to do |format|
      if @internship_application.save
        format.html { redirect_to @pages_intern_application_review_path, notice: 'Internship application was successfully created.' }
        format.json { render :show, status: :created, location: @pages_intern_application_review_path }
      else
        format.html { render :new }
        format.json { render json: @internship_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internship_applications/1
  # PATCH/PUT /internship_applications/1.json
  def update
    respond_to do |format|
      if @internship_application.update(internship_application_params)
        format.html { redirect_to @internship_application, notice: 'Internship application was successfully updated.' }
        format.json { render :show, status: :ok, location: @internship_application }
      else
        format.html { render :edit }
        format.json { render json: @internship_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internship_applications/1
  # DELETE /internship_applications/1.json
  def destroy
    @internship_application.destroy
    respond_to do |format|
      format.html { redirect_to internship_applications_url, notice: 'Internship application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship_application
      @internship_application = InternshipApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internship_application_params
      params.require(:internship_application).permit(:job_id, :applicant_id, :answers_list)
    end
end
