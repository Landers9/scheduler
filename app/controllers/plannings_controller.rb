class PlanningsController < ApplicationController

  def index
  end

  def new
    @planning = Planning.new
    @planning.user_id = current_user.id
    
  end

end
