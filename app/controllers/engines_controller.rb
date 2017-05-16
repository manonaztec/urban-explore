class EnginesController < ApplicationController
  def index
    @engines = Engine.all
  end

  def show
    @engine = Engine.find(params[:id])
  end
end
