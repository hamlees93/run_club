class RunController < ApplicationController
  before_action :all_runs, only: [:index, :destroy]
  before_action :set_run, only: [:show, :update, :destroy]
  before_action :run_params, only: [:create]

  def index
    render json: @runs
  end

  def show
    render json: @run
  end

  def create
    @run = Run.new(run_params)

    if @run.save
      render json: @run
    else
      puts "###### NOPE ######"
    end
  end

  def destroy
    render json: @runs if @run.destroy
  end

  private

  def all_runs
    @runs = Run.all
  end

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.require(:run).permit(:distance, :time)
  end
end