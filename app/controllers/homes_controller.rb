class HomesController < ApplicationController

  def index
    @teacherRespo = User.where(is_profrespo: true).count
    @teachers = User.where(is_prof: true).count
    @rooms = Salle.count
    @materials = Material.count
    @plannings = Planning.all.order(id: :asc)
  end

end
