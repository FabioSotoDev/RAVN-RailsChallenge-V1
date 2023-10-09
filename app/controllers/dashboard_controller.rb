class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @pokemons = ReportCatches.all
  end
end
