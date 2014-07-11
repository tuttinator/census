class TerritorialAuthoritiesController < ApplicationController
  respond_to :json

  def index
    respond_with TerritorialAuthority.includes(:meshblocks).all
  end

  def show
    respond_with TerritorialAuthority.find(params[:id])
  end

end
