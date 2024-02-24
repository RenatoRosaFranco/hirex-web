# frozen_string_literal: true

class JobsController < ApplicationController
  before_action :set_job, only: %i[show edit update destroy]

  def index
    @jobs = Job.all
  end

  def show; end

  def new
    @job = Job.new
  end

  def create
    job = Job.new(job_params)

    if job.save
      flash[:notice] = 'Job added with success.'
      redirect_to job
    else
      render :new
    end
  end

  def edit; end

  def update
    if @job.update(job_params)
      flash[:notice] = 'Job updated with success.'
      redirect_to @job
    else
      render :edit
    end
  end

  def destroy
    @job.destroy

    flash[:notice] = 'Job removed with success.'
    redirect_to jobs_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job)
          .permit(:title, :description, :requirements, :benefits)
  end
end
