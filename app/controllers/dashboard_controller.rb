class DashboardController < ApplicationController
  def index
    @pokemons = ReportCatches.all
  end
end
