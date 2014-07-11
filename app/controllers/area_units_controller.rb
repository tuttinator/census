class AreaUnitsController < ApplicationController
  respond_to :json

  def index
    respond_with AreaUnit.includes(:meshblocks).all
  end

  def show
    respond_with AreaUnit.find(params[:id])
  end

end
