class PlanningsController < ApplicationController

  # before_action :set_planning, only: %i[ show edit update destroy]

  def index
  end

  def new
    @planning = Planning.new
    @planning.user_id = current_user.id
  end

  def create
    @planning = Planning.new(planning_params)
    @planning.user_id = current_user.id
    if @planning.save
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
    planning = Planning.find_by(id: params[:id]).destroy
    redirect_to "/"
  end

  def edit
    @planning = Planning.find(params[:id])
  end

  def update
    @planning = Planning.find(params[:id])
    if @planning.update(planning_params)
      redirect_to "/"

    else
      render :edit
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planning
      @planning = Planning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planning_params
      params.require(:planning).permit(:user_id, :salle_id, :formation_id, :material_id, :date_begin, :date_end)
    end

end
