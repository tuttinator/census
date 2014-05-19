class MeshblocksController < ApplicationController
  respond_to :json

  def index
    respond_with Meshblock.pluck(:id)
  end

  def show
    respond_with Meshblock.find(params[:id])
  end

end
