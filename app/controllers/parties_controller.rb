class PartiesController < ApplicationController

  before_action :set_party, only: [:edit, :show, :update, :destroy]

  def index
    @parties = Party.all
  end
  def create
    @party = Party.create(party_params)
    redirect_to root_path
  end
  def new
    @party = Party.new
  end
  def edit
  end
  def show
    @character = Character.new
  end
  def update
    @party.update(party_params)
    redirect_to @party
  end
  def destroy
    @party.destroy
    redirect_to root_path
  end

  private

    def set_party
      @party = Party.find(params[:id])
    end
end
