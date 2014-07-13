class RegionalCouncilConstituenciesController < ApplicationController
  respond_to :json

  def index
    respond_with RegionalCouncilConstituency.includes(:meshblocks).all
  end

  def show
    respond_with RegionalCouncilConstituency.find(params[:id])
  end

end
