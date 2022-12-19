class Api::PartiesController < ApplicationController
  def index
    @parties = Party.all
    render :index
  end

  def show
    @party = Party.find(params[:id])
    @guests = Party.includes(guests: [:gifts])
    render :show
    # render :normalized_show
  end
end