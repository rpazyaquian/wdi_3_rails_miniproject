class PartiesController < ApplicationController

  before_action :set_party, only: [:edit, :show, :update, :destroy]

  def index
    @parties = Party.all
  end
  def create
    @party = Party.create(party_params)
    redirect_to root_route
  end
  def new
    @party = Party.new
  end
  def edit
  end
  def show
  end
  def update
  end
  def destroy
  end

  private

    def set_party
      @party = Party.find(params[:id])
    end
end
