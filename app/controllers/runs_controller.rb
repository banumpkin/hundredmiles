class RunsController < ApplicationController
  before_action :set_run, only: [:show, :edit, :update, :destroy, :myruns]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @runs = Run.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end

  def show
  end

  def summ
    @users = User.all
    @runs = Run.select("date(date) as Month, sum(distance) as total_miles").group("date(date), user") 
  end

  def myruns
    @runs = current_user.runs.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end

  def new
    @run = current_user.runs.build
  end

  def edit
  end

  def create
    @run = current_user.runs.build(run_params)
      if @run.save
        redirect_to @run, notice: 'Run was successfully uploaded.' 
      else
         render :new 
      end
  end

  def update
      if @run.update(run_params)
        redirect_to @run, notice: 'Run was successfully updated.'
      else
        render :edit 
      end
  end

  def destroy
    @run.destroy
    redirect_to runs_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run
      @run = Run.find_by(id: params[:id])
    end

  def correct_user
    @run = current_user.runs.find_by(id: params[:id])
    redirect_to runs_path, notice: "Not authorized to edit this run" if @run.nil?
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_params
      params.require(:run).permit(:distance, :date, :image, :pace)
    end

end
