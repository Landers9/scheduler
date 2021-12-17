class HomesController < ApplicationController

  def index
    @plannings = Planning.all.order(id: :asc)
  end

end
