class Api::V1::JobsController < ApplicationController
  before_action :set_job, only: [:show, :update]

  # GET /jobs

  def index
    # @jobs = Job.where(nil)
    # @jobs = @jobs.company(params[:company]) if params[:company].present?
     @jobs = Job.filter(params.slice(:company, :location, :starts_with))
    render json: @jobs
  end

  # GET /jobs/1
  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)

    if @job.save
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /jobs/1
  # def destroy
  #   @job.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:name, :location_id, :company_id)
    end
end
