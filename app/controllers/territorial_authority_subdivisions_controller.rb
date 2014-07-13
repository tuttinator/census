class TerritorialAuthoritySubdivisionsController < ApplicationController
  respond_to :json

  def index
    respond_with TerritorialAuthoritySubdivision.includes(:meshblocks).all
  end

  def show
    respond_with TerritorialAuthoritySubdivision.find(params[:id])
  end

end
